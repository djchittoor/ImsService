.class Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;
.super Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
.source "PacketKeepAliveProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfcKeepAliveCallback"
.end annotation


# instance fields
.field config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

.field mIsStarted:Z

.field final synthetic this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
    .param p2, "config"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 144
    iput-object p1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 145
    iput-object p2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 146
    return-void
.end method

.method private errorToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "error"    # I

    .line 177
    const-string v0, "unknown"

    .line 178
    .local v0, "str":Ljava/lang/String;
    const/16 v1, -0x1f

    if-eq p1, v1, :cond_1

    const/16 v1, -0x1e

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 180
    :pswitch_0
    const-string v0, "ERROR_INVALID_NETWORK"

    .line 181
    goto :goto_0

    .line 183
    :pswitch_1
    const-string v0, "ERROR_INVALID_IP_ADDRESS"

    .line 184
    goto :goto_0

    .line 186
    :pswitch_2
    const-string v0, "ERROR_INVALID_PORT"

    .line 187
    goto :goto_0

    .line 189
    :pswitch_3
    const-string v0, "ERROR_INVALID_LENGTH"

    .line 190
    goto :goto_0

    .line 192
    :pswitch_4
    const-string v0, "ERROR_INVALID_INTERVAL"

    .line 193
    goto :goto_0

    .line 195
    :cond_0
    const-string v0, "ERROR_HARDWARE_UNSUPPORTED"

    .line 196
    goto :goto_0

    .line 198
    :cond_1
    const-string v0, "ERROR_HARDWARE_ERROR"

    .line 201
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x18
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    return v0
.end method

.method public onError(I)V
    .locals 2
    .param p1, "error"    # I

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keepAlive is failed, error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->errorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, "PacketKeepAliveProcessor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 174
    return-void
.end method

.method public onStarted()V
    .locals 5

    .line 154
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "keepAlive is started!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v0, v0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v1, v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    const/16 v3, 0x3ef

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    return-void
.end method

.method public onStopped()V
    .locals 5

    .line 162
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "keepAlive is stopped!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 164
    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    iput-boolean v0, v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->enable:Z

    .line 165
    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v1, v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v2, v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    const/16 v4, 0x3ef

    invoke-virtual {v2, v4, v0, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    return-void
.end method
