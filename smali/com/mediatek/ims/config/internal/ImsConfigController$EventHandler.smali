.class Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;
.super Landroid/os/Handler;
.source "ImsConfigController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field private mPhoneId:I

.field final synthetic this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigController;ILandroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;
    .param p2, "phoneId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 194
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 195
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 196
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    .line 197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_12

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_10

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_e

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_8

    .line 349
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$300(Lcom/mediatek/ims/config/internal/ImsConfigController;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 351
    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v1

    .line 350
    invoke-static {v0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$302(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$300(Lcom/mediatek/ims/config/internal/ImsConfigController;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v1

    .line 355
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v2

    .line 354
    invoke-interface {v0, v1, v2, v4}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 357
    goto/16 :goto_8

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigController;)V

    .line 311
    goto/16 :goto_8

    .line 314
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 315
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;

    .line 318
    .local v1, "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 319
    :try_start_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 320
    iget v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->requestConfigNum:I

    new-array v2, v2, [I

    .line 321
    .local v2, "errorResult":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 322
    const/4 v6, -0x1

    aput v6, v2, v4

    .line 321
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 325
    .end local v4    # "i":I
    :cond_1
    iput-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->resultArray:[I

    .line 326
    iput v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->configResult:I

    .line 327
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SET_MDCFG_DONE, error ret, e="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    nop

    .end local v2    # "errorResult":[I
    goto :goto_2

    .line 329
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 331
    .local v2, "resultStr":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "resultStrArray":[Ljava/lang/String;
    array-length v6, v3

    new-array v6, v6, [I

    .line 333
    .local v6, "resultIntArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v3

    if-ge v7, v8, :cond_3

    .line 334
    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 333
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 336
    .end local v7    # "i":I
    :cond_3
    iput-object v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->resultArray:[I

    .line 338
    iput v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->configResult:I

    .line 340
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 341
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v4}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "SET_MDCFG_DONE, finish set MD Ims config!"

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v2    # "resultStr":Ljava/lang/String;
    .end local v3    # "resultStrArray":[Ljava/lang/String;
    .end local v6    # "resultIntArray":[I
    :cond_4
    :goto_2
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 344
    monitor-exit v5

    .line 346
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    goto/16 :goto_8

    .line 344
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 291
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 292
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    .line 294
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 295
    :try_start_1
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_5

    .line 296
    iput v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 297
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_IMS_GET_RESOURCE_DONE: error ret null, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 300
    :cond_5
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 301
    .local v3, "value":[I
    aget v2, v3, v2

    iput v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    .line 302
    iput v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 304
    .end local v3    # "value":[I
    :goto_3
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 305
    monitor-exit v5

    .line 307
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    goto/16 :goto_8

    .line 305
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 203
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 204
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    .line 206
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 207
    :try_start_2
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6

    .line 209
    iput v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 210
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_IMS_SET_FEATURE_DONE: error ret null, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 213
    :cond_6
    iput v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 215
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 216
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_IMS_SET_FEATURE_DONE: Finish set feature!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_7
    :goto_4
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 219
    monitor-exit v5

    .line 221
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    goto/16 :goto_8

    .line 219
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :catchall_2
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 224
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 225
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    .line 227
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 228
    :try_start_3
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    .line 229
    iput v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 230
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_IMS_GET_FEATURE_DONE: error ret null, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 233
    :cond_8
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 234
    .restart local v3    # "value":[I
    aget v2, v3, v2

    iput v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    .line 235
    iput v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 237
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 238
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_IMS_GET_FEATURE_DONE: featureValue:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v3    # "value":[I
    :cond_9
    :goto_5
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 242
    monitor-exit v5

    .line 244
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    goto/16 :goto_8

    .line 242
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :catchall_3
    move-exception v2

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 270
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 271
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;

    .line 273
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 274
    :try_start_4
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    .line 276
    iput v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 277
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_SET_PROVISION_DONE: error ret null, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 280
    :cond_a
    iput v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 282
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 283
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MSG_IMS_SET_PROVISION_DONE: Finish set provision!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_b
    :goto_6
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 286
    monitor-exit v2

    .line 288
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    goto/16 :goto_8

    .line 286
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :catchall_4
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v3

    .line 247
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 248
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;

    .line 250
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 251
    :try_start_5
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_c

    .line 252
    iput v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 253
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_GET_PROVISION_DONE: error ret null, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 256
    :cond_c
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionInfo:Ljava/lang/String;

    iput-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 258
    iput v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 260
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 261
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_GET_PROVISION_DONE: provisionInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_d
    :goto_7
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 265
    monitor-exit v2

    .line 267
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    goto/16 :goto_8

    .line 265
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :catchall_5
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v3

    .line 392
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.config.action.CONFIG_LOADED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 398
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_IMS_CFG_CONFIG_LOADED phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_f
    goto/16 :goto_8

    .line 376
    :cond_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 377
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 378
    .local v1, "value":[I
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v5, "intent":Landroid/content/Intent;
    aget v6, v1, v2

    const-string v7, "phone_id"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    aget v6, v1, v4

    const-string v7, "item"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    aget v6, v1, v3

    const-string v7, "value"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v6}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 384
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 385
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_IMS_CFG_FEATURE_CHANGED: phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " feature ="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v4

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v3

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigController"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "value":[I
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_11
    goto :goto_8

    .line 361
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 367
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DYNAMIC_IMS_SWITCH_COMPLETE phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_13
    nop

    .line 407
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
