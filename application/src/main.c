/*
 * Copyright (c) 2021 OpenHisiIpCam, info@openhisiipcam.org
 * SPDX-License-Identifier: MIT
 */

#include <assert.h>
#include <getopt.h>
#include <stdio.h>
#include <string.h>

#include <libwebsockets.h>
#include <uv.h>

//#include "lws/lws.h"

typedef struct
{
  uv_loop_t loop_uv;         ///< libuv instance
  uv_signal_t sighandler_uv; ///< signal handler (via libuv)
  //lws_t* lws;                ///< libwebsockets ws/http server instance
} application_t;


static void
signal_cb_uv(uv_signal_t* watcher, int signum)
{
  //streamer_t* streamer = watcher->data;

  //lwsl_notice("Signal %d caught...\n", signum);

  switch (signum) {
    case SIGTERM:
    case SIGINT:
      break;
    default:
      break;
  }

  //uv_stop(&streamer->loop_uv);
}


int
main()
{
  printf("application\n");

  application_t application;
 int r;

  r = uv_loop_init(&application.loop_uv); /// @todo check return
  if (0 != r) {
    printf("UV loop init failed!\n");
    /// @todo check return error values
    goto shutdown;
  }
  printf("UV loop inited.\n");

  /*
  uv_signal_init(&streamer.loop_uv, &streamer.sighandler_uv);

  streamer.sighandler_uv.data = &streamer;

  uv_signal_start(&streamer.sighandler_uv, signal_cb_uv, SIGINT);
  */
shutdown:
  return 0;
}
