.class Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationRequestReceiver"
.end annotation


# instance fields
.field private mAccessoryConnectionState:I

.field private mIsOrientationUpdateAllowed:Z

.field private mOrientation:I

.field private mWifiDisplayState:I

.field final synthetic this$0:Lcom/sonymobile/home/HomeFragment;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/HomeFragment;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1148
    iput-object p1, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1193
    iput v0, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mOrientation:I

    .line 1196
    iput v0, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mWifiDisplayState:I

    .line 1199
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mAccessoryConnectionState:I

    .line 1202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mIsOrientationUpdateAllowed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/HomeFragment;Lcom/sonymobile/home/HomeFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/HomeFragment;
    .param p2, "x1"    # Lcom/sonymobile/home/HomeFragment$1;

    .prologue
    .line 1148
    invoke-direct {p0, p1}, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;-><init>(Lcom/sonymobile/home/HomeFragment;)V

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .prologue
    .line 1240
    iget v0, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mOrientation:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x5

    .line 1245
    iget-object v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v4}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1246
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mIsOrientationUpdateAllowed:Z

    if-nez v4, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1249
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    # invokes: Lcom/sonymobile/home/HomeFragment;->updateDefaultOrientation(Landroid/app/Activity;)V
    invoke-static {v4, v0}, Lcom/sonymobile/home/HomeFragment;->access$300(Lcom/sonymobile/home/HomeFragment;Landroid/app/Activity;)V

    .line 1251
    const/4 v3, -0x1

    .line 1254
    .local v3, "orientation":I
    const-string v4, "com.sonyericsson.extras.liveware.ACCESSORY_CONFIGURATION_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1255
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1256
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 1257
    const-string v4, "com.sonyericsson.extras.liveware.extra.EXTRA_ACCESSORY_CONFIGURATION_TYPES"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1259
    .local v1, "configTypes":I
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_2

    .line 1260
    const-string v4, "com.sonyericsson.extras.liveware.extra.EXTRA_ACCESSORY_CONNECTION_STATE"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mAccessoryConnectionState:I

    .line 1262
    iget v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mAccessoryConnectionState:I

    if-ne v4, v9, :cond_4

    .line 1263
    const/4 v3, 0x4

    .line 1286
    .end local v1    # "configTypes":I
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_2
    :goto_1
    if-eq v3, v7, :cond_3

    .line 1287
    # invokes: Lcom/sonymobile/home/HomeFragment;->setRequestedOrientationIfChanged(Landroid/app/Activity;I)V
    invoke-static {v0, v3}, Lcom/sonymobile/home/HomeFragment;->access$700(Landroid/app/Activity;I)V

    .line 1288
    iput v3, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mOrientation:I

    .line 1290
    :cond_3
    iget v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mAccessoryConnectionState:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mWifiDisplayState:I

    if-eq v4, v6, :cond_0

    .line 1292
    iget-object v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mDefaultOrientation:I
    invoke-static {v4}, Lcom/sonymobile/home/HomeFragment;->access$600(Lcom/sonymobile/home/HomeFragment;)I

    move-result v4

    iput v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mOrientation:I

    goto :goto_0

    .line 1264
    .restart local v1    # "configTypes":I
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_4
    iget v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mAccessoryConnectionState:I

    if-nez v4, :cond_2

    .line 1265
    iget v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mWifiDisplayState:I

    if-ne v4, v6, :cond_5

    .line 1266
    const/4 v3, 0x2

    goto :goto_1

    .line 1268
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mDefaultOrientation:I
    invoke-static {v4}, Lcom/sonymobile/home/HomeFragment;->access$600(Lcom/sonymobile/home/HomeFragment;)I

    move-result v3

    goto :goto_1

    .line 1273
    .end local v1    # "configTypes":I
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_6
    const-string v4, "com.sonymobile.tvout.wifidisplay.intent.action.WIFI_DISPLAY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1274
    const-string v4, "com.sonymobile.tvout.wifidisplay.intent.extra.WIFI_DISPLAY_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mWifiDisplayState:I

    .line 1276
    iget v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mAccessoryConnectionState:I

    if-nez v4, :cond_2

    .line 1277
    iget v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->mWifiDisplayState:I

    if-ne v4, v6, :cond_7

    .line 1278
    const/4 v3, 0x2

    goto :goto_1

    .line 1280
    :cond_7
    iget-object v4, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mDefaultOrientation:I
    invoke-static {v4}, Lcom/sonymobile/home/HomeFragment;->access$600(Lcom/sonymobile/home/HomeFragment;)I

    move-result v3

    goto :goto_1
.end method

.method public register()V
    .locals 3

    .prologue
    .line 1208
    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v2}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1209
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sonyericsson.extras.liveware.ACCESSORY_CONFIGURATION_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.sonymobile.tvout.wifidisplay.intent.action.WIFI_DISPLAY_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1212
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v2}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 1214
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 1215
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "Could not register fragment as broadcastreceiver for activity, this implies serious problems"

    invoke-static {v2}, Lcom/sonymobile/flix/debug/Logx;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 1224
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v1}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1226
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v1}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Could not unregister fragment as broadcastreceiver from activity"

    invoke-static {v1}, Lcom/sonymobile/flix/debug/Logx;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
