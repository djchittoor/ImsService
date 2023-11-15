.class public Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
.super Ljava/lang/Object;
.source "PacketKeepAliveProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;,
        Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;,
        Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    }
.end annotation


# static fields
.field static final PROPERTY_ENABLE_OFFLOAD:Ljava/lang/String; = "persist.vendor.mtk_enable_keep_alive_offload"

.field static final TAG:Ljava/lang/String; = "PacketKeepAliveProcessor"


# instance fields
.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field mKeepAlives:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWifiPdnHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    .line 230
    iput-object p1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 231
    iput-object p2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringFromArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # [Ljava/lang/String;

    .line 262
    if-nez p1, :cond_0

    const-string v0, "null"

    return-object v0

    .line 263
    :cond_0
    const-string v0, ""

    .line 264
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private isActiveWifiNetwork(Landroid/net/Network;)Z
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 339
    const-string v0, "PacketKeepAliveProcessor"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 340
    const-string v2, "isActiveWifiNetwork: network null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return v1

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 344
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 345
    const-string v3, "isActiveWifiNetwork: network info null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return v1

    .line 348
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method private isWifiOffloadEnabledFromSystemProperty()Z
    .locals 2

    .line 258
    const-string v0, "persist.vendor.mtk_enable_keep_alive_offload"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    return-object p1

    .line 381
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 382
    .local v1, "maskLength":I
    const-string v2, "*"

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 386
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 387
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 389
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseKeepAliveConfig([Ljava/lang/String;)Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    .locals 13
    .param p1, "result"    # [Ljava/lang/String;

    .line 274
    const-string v0, "PacketKeepAliveProcessor"

    if-nez p1, :cond_0

    .line 275
    const-string v1, "parseKeepAliveConfig() result is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;-><init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;)V

    return-object v0

    .line 279
    :cond_0
    const/4 v1, 0x0

    .line 281
    .local v1, "config":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    const/4 v2, 0x0

    :try_start_0
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v2

    .line 282
    .local v7, "enable":Z
    :goto_0
    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 283
    .local v8, "interval":I
    const/4 v2, 0x2

    aget-object v9, p1, v2

    .line 284
    .local v9, "srcIp":Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 285
    .local v10, "srcPort":I
    const/4 v2, 0x4

    aget-object v11, p1, v2

    .line 286
    .local v11, "dstIp":Ljava/lang/String;
    const/4 v2, 0x5

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 287
    .local v12, "dstPort":I
    new-instance v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;-><init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;ZILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 291
    .end local v7    # "enable":Z
    .end local v8    # "interval":I
    .end local v9    # "srcIp":Ljava/lang/String;
    .end local v10    # "srcPort":I
    .end local v11    # "dstIp":Ljava/lang/String;
    .end local v12    # "dstPort":I
    goto :goto_1

    .line 289
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseKeepAliveConfig() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseKeepAliveConfig() config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-object v1
.end method


# virtual methods
.method findConfigInList(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    .locals 3
    .param p1, "config"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 362
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    .line 363
    .local v1, "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    invoke-virtual {v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->getConfig()Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findConfigInList found config: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PacketKeepAliveProcessor"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-object v1

    .line 367
    .end local v1    # "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    :cond_0
    goto :goto_0

    .line 368
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleKeepAliveChanged([Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # [Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->isWifiOffloadEnabledFromSystemProperty()Z

    move-result v0

    const-string v1, "PacketKeepAliveProcessor"

    if-nez v0, :cond_0

    .line 240
    const-string v0, "mtk_enable_keep_alive_offload is disabled by System Property."

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 244
    :cond_0
    const-string v0, "handleKeepAliveChanged"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->parseKeepAliveConfig([Ljava/lang/String;)Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    move-result-object v0

    .line 246
    .local v0, "config":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    if-nez v0, :cond_1

    .line 247
    const-string v2, "KeepAliveConfig is null, return directly"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 250
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->isEnabledAndAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->startPacketKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->stopPacketKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V

    .line 255
    :goto_0
    return-void
.end method

.method public notifyWifiDisconnect()V
    .locals 0

    .line 235
    invoke-virtual {p0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->stopAllPacketKeepAlive()V

    .line 236
    return-void
.end method

.method startPacketKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V
    .locals 10
    .param p1, "config"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 297
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v1, "PacketKeepAliveProcessor"

    if-nez v0, :cond_0

    .line 298
    const-string v0, "ConnectivityManager is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNattKeepalive cannot start! Due to mKeepAlives.size() >=3, size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    .line 304
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 308
    :cond_1
    new-instance v0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;-><init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V

    .line 309
    .local v0, "callback":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;
    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v9

    .line 310
    .local v9, "network":Landroid/net/Network;
    invoke-direct {p0, v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->isActiveWifiNetwork(Landroid/net/Network;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v4, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->interval:I

    iget-object v6, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcIp:Ljava/net/InetAddress;

    iget v7, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcPort:I

    iget-object v8, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstIp:Ljava/net/InetAddress;

    move-object v3, v9

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Landroid/net/ConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;Ljava/net/InetAddress;ILjava/net/InetAddress;)Landroid/net/ConnectivityManager$PacketKeepalive;

    move-result-object v1

    .line 314
    .local v1, "ka":Landroid/net/ConnectivityManager$PacketKeepalive;
    new-instance v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;-><init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Landroid/net/ConnectivityManager$PacketKeepalive;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;)V

    .line 315
    .local v2, "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    iget-object v3, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v1    # "ka":Landroid/net/ConnectivityManager$PacketKeepalive;
    .end local v2    # "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    nop

    .line 320
    return-void

    .line 317
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It\'s not a active wifi network, network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method stopAllPacketKeepAlive()V
    .locals 2

    .line 352
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "stopAllPacketKeepAlive"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 354
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    .line 356
    .local v1, "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    invoke-virtual {v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->stop()V

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 358
    .end local v1    # "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    goto :goto_0

    .line 359
    :cond_0
    return-void
.end method

.method stopAndRemoveKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;)V
    .locals 1
    .param p1, "kai"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    .line 372
    invoke-virtual {p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->stop()V

    .line 373
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method stopPacketKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V
    .locals 4
    .param p1, "config"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 323
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "stopPacketKeepAlive"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 325
    const-string v1, "ConnectivityManager is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->findConfigInList(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    move-result-object v0

    .line 329
    .local v0, "foundKai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->stopAndRemoveKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    const/16 v2, 0x3ef

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    :goto_0
    return-void
.end method
