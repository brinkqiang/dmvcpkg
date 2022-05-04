﻿//#include "pch.h"
#include "asio-spawn-echo-client.h"
#include "dmlog.h"

session_t::session_t(io_context_t& io_context)
    : socket(io_context)
{
}

session_t::~session_t()
{
    LOG_INFO("log");
}

void session_t::go()
{
    auto self(shared_from_this());
    asio::spawn(socket.get_executor(),
        [this, self](yield_context_t yield)
    {
        string message;
        while (std::getline(cin, message))
        {
            LOG_INFO("{0}", message);
            error_code_t ec;
            auto size = socket.async_write_some(asio::buffer(message), yield[ec]);

            if (ec)
            {
                LOG_INFO("{0}", ec.message());
            }
            else
            {
                LOG_INFO("async_write_some:{0}", size);

                vector<char> buff(1024, '\0');

                while (true)
                {
                    auto read_size = socket.async_read_some(asio::buffer(buff), yield[ec]);
                    if (ec)
                    {
                        LOG_ERROR("{0}", ec.message());
                        exit(1);
                    }
                    else
                    {
                        copy_n(buff.begin(), read_size, back_inserter(buffer));
                        if (read_size < buff.size())
                        {
                            break;
                        }
                    }
                }

                buffer.push_back('\0');
                LOG_INFO("async_read_some:{0}", buffer.data());
                buffer.clear();
            }
        }
    });
}

int main()
{
    io_context_t io_context;

    asio::spawn(io_context,
        [&io_context](yield_context_t yield)
    {
        error_code_t ec;

        auto session = make_shared<session_t>(io_context);
        auto& socket = session->socket;

        socket.async_connect(endpoint_t(address_t::from_string("127.0.0.1"), 12500), yield[ec]);
        if (ec)
        {
            LOG_ERROR("{0}", ec.message());
            exit(1);
        }
        else
        {
            LOG_INFO("address:{0} port:{1}", session->address, session->port);
            session->go();
        }
    });

    io_context.run();
}
