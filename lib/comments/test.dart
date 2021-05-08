/*
**
*
*WidgetsFlutterBinding.ensureInitialized();

  PusherOptions options = PusherOptions(
    host: '192.168.56.1',
    port: 6001,
    encrypted: false,
    auth:PusherAuth(
      'http://192.168.56.1:8000/broadcasting/auth',headers: {
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5MzQwMTg1My1mYWRhLTRkOWUtOWQzYS03OGQ3ZDM4ZWRjMGYiLCJqdGkiOiJiMjJiYmVhODgyMjVjNzI0Nzc3MWU0OTE5ZGMyMzA0NmUwNzU1YzFkM2UzZjgyY2QwNDY3MmM2Mzk4N2JiNzJjNDAwZTRmMWUwNzc5NTJkNiIsImlhdCI6MTYyMDQyMzQ5MC44Mjk1MjgsIm5iZiI6MTYyMDQyMzQ5MC44Mjk1MzQsImV4cCI6MTY1MTk1OTQ5MC42ODY0OTUsInN1YiI6IjMwIiwic2NvcGVzIjpbXX0.ejbeax_Ui_Qd415eXnH_CnJhXR-EhoLKJzWCZn4Z3HXiK5DxgduQ1ESHxCQGZa7zxq01zcE718n0BSO_mZvv51buwrfI9Vcd5i6CdNe4V7qBMrZz4_UCuOhqzIhfomGF5AU_GgHGr4pKA-5sA9G_5lzSUc9zV-fbN5cQVrSnGahIcXqcNkA2fvTqgwBPc_fmUgw57rBU8fkWxMAXv1oHin5C6lIfbs-OdDtxJaLeq3CO_eDsoDmQcaP1dMfqD-NwvTVtJ1P9-vlRFemB8h3Fc-oXBTqLsV2oN1WTcF3xEKKmb_7SjKFlPcKd1CDiSdFLcJYrz1dvk6z1xxtISzU8FMvozXoHbGhoNcBzxBzwIJQ2TcfK2yP0sJZLNzTS8Sf-V-VrOGzWkk5H24UsCf3tLZt8arVPPpz7B8x1ce-Vp_upT3zgoDTvBaUoE3CrSVmBfr2kOvxhHdLON7yat-SrtRX8CZ371Xja487XFS2BuS0-eEDwq9dzcEuaFLXNs81U8FDVD8aj_4MqvVvAL6MPyo79c1QatTW1MuaiwkPNI0fUNAgLXW9hdsYhvSGJpRvZ8IENikf38v1ulBELlA9KJUaKDKrUTIDf3ReBT87iKQI_1TX6JkrwA5z_YIkGHLxYiB6XMd4euKSmWnVVf7KYzGkR1TAruAAMAP956n7dNLM',
    },
    ),
  );
  FlutterPusher pusher = FlutterPusher('HgBstRMgCt8RJlrcxU0DjOha8MjOJYStSPux7If1vf4', options, enableLogging: true);

  Echo echo = new Echo({
    'broadcaster': 'pusher',
    'client': pusher,
  });

  echo.channel('private-message').listen('Message', (e) {
    print("Waddas: ${e.toString()}");
  });


 // echo.socket.on('connect', (_) => print('connect'));
 // echo.socket.on('disconnect', (_) => print('disconnect'));
 */