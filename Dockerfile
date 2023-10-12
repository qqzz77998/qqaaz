从nginx:主线-阿尔卑斯-苗条
维护者凤凰< https://t.me/HiaiFeng >
揭露 80
用户根

奔跑apk更新&& apk无缓存管理程序wget解压缩卷曲

# 定义UUID及 伪装路径,请自行修改。(注意：伪装路径以 / 符号开始,为避免不必要的麻烦,请不要使用特殊符号。)
包封/包围（动词包围的简写)UUID 668bdb89-a77f-44ff-b236-5d108d65a749
包封/包围（动词包围的简写)VMESS_WSPATH /vmess
包封/包围（动词包围的简写)VLESS_WSPATH /vless

复制超级坏蛋。conf/etc/supervisor/confd/超级主管。会议
复制nginx。conf/etc/nginx/nginx。会议

奔跑mkdir/etc/v2射线/usr/local/v2射线
复制config.json /etc/v2ray/
复制entrypoint.sh /usr/local/v2ray/

# 感谢fscarmen大佬提供Dockerfile文件文件层优化方案
奔跑wget-q-O/tmp/v2 ray-Linux-64。zip https://github。com/v2 fly/v2 ray-core/releases/download/v4。45 .0/v2 ray-Linux-64。zip & & \
unzip-d/usr/local/v2 ray/tmp/v2 ray-Linux-64。压缩v2射线& & \
wget-q-O/usr/local/v2 ray/geosite。dat https://github。com/忠诚的士兵/v2射线-规则-dat/发布/最新/下载/geosite。日期& \
wget-q-O/usr/local/v2 ray/GeoIP。dat https://github。com/忠诚的士兵/v2射线-规则-dat/发布/最新/下载/GeoIP。dat & & \
chmod a+x/usr/local/v2射线/入口点。嘘& & \
apk del wget unzip && \
RM-RF/tmp/v2 ray-Linux-64。zip & & \
rm -rf /var/cache/apk/* && \
rm -rf /tmp/*
    
入口点["/usr/local/v2 ray/entry point . sh "]
