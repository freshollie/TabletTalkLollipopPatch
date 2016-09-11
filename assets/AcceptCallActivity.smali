.class public Lcom/apdroid/tabtalk/AcceptCallActivity;
.super Landroid/app/Activity;
.source "AcceptCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;
    }
.end annotation


# static fields
.field private static final MANUFACTURER_HTC:Ljava/lang/String; = "HTC"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private callStateReceiver:Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;

.field private keyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private acceptCall()V
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 78
    const-string v5, "HTC"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 79
    iget-object v5, p0, Lcom/apdroid/tabtalk/AcceptCallActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 81
    .local v0, "broadcastConnected":Z
    :goto_14
    if-eqz v0, :cond_19

    .line 82
    invoke-direct {p0, v6}, Lcom/apdroid/tabtalk/AcceptCallActivity;->broadcastHeadsetConnected(Z)V

    .line 87
    :cond_19
    :try_start_19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "input keyevent "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    const/16 v8, 0x4f

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-virtual {v5, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_35} :catch_3d
    .catchall {:try_start_19 .. :try_end_35} :catchall_71

    .line 104
    :goto_35
    if-eqz v0, :cond_3a

    .line 105
    invoke-direct {p0, v6}, Lcom/apdroid/tabtalk/AcceptCallActivity;->broadcastHeadsetConnected(Z)V

    .line 108
    :cond_3a
    return-void

    .end local v0    # "broadcastConnected":Z
    :cond_3b
    move v0, v6

    .line 78
    goto :goto_14

    .line 90
    .restart local v0    # "broadcastConnected":Z
    :catch_3d
    move-exception v3

    .line 92
    .local v3, "e":Ljava/io/IOException;
    :try_start_3e
    const-string v4, "android.permission.CALL_PRIVILEGED"

    .line 93
    .local v4, "enforcedPerm":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v7, "android.intent.extra.KEY_EVENT"

    new-instance v8, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    .line 95
    const/16 v10, 0x4f

    invoke-direct {v8, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 93
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 96
    .local v1, "btnDown":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v7, "android.intent.extra.KEY_EVENT"

    new-instance v8, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    .line 98
    const/16 v10, 0x4f

    invoke-direct {v8, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 96
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 100
    .local v2, "btnUp":Landroid/content/Intent;
    invoke-virtual {p0, v1, v4}, Lcom/apdroid/tabtalk/AcceptCallActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v2, v4}, Lcom/apdroid/tabtalk/AcceptCallActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_3e .. :try_end_70} :catchall_71

    goto :goto_35

    .line 103
    .end local v1    # "btnDown":Landroid/content/Intent;
    .end local v2    # "btnUp":Landroid/content/Intent;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "enforcedPerm":Ljava/lang/String;
    :catchall_71
    move-exception v5

    .line 104
    if-eqz v0, :cond_77

    .line 105
    invoke-direct {p0, v6}, Lcom/apdroid/tabtalk/AcceptCallActivity;->broadcastHeadsetConnected(Z)V

    .line 107
    :cond_77
    throw v5
.end method

.method private broadcastHeadsetConnected(Z)V
    .registers 5
    .param p1, "connected"    # Z

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    const-string v2, "state"

    if-eqz p1, :cond_20

    const/4 v1, 0x1

    :goto_11
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v1, "name"

    const-string v2, "mysms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/4 v1, 0x0

    :try_start_1c
    invoke-virtual {p0, v0, v1}, Lcom/apdroid/tabtalk/AcceptCallActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_22

    .line 119
    :goto_1f
    return-void

    .line 113
    :cond_20
    const/4 v1, 0x0

    goto :goto_11

    .line 117
    :catch_22
    move-exception v1

    goto :goto_1f
.end method

.method private registerCallStateReceiver()V
    .registers 4

    .prologue
    .line 55
    new-instance v1, Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;-><init>(Lcom/apdroid/tabtalk/AcceptCallActivity;Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;)V

    iput-object v1, p0, Lcom/apdroid/tabtalk/AcceptCallActivity;->callStateReceiver:Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/apdroid/tabtalk/AcceptCallActivity;->callStateReceiver:Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/apdroid/tabtalk/AcceptCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method private updateWindowFlags()V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/apdroid/tabtalk/AcceptCallActivity;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 63
    invoke-virtual {p0}, Lcom/apdroid/tabtalk/AcceptCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 64
    const/high16 v1, 0x680000

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 73
    :goto_11
    return-void

    .line 68
    :cond_12
    invoke-virtual {p0}, Lcom/apdroid/tabtalk/AcceptCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 69
    const v1, 0x480080

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_11
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/AcceptCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/apdroid/tabtalk/AcceptCallActivity;->keyguardManager:Landroid/app/KeyguardManager;

    .line 32
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/AcceptCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/apdroid/tabtalk/AcceptCallActivity;->audioManager:Landroid/media/AudioManager;

    .line 33
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 48
    iget-object v0, p0, Lcom/apdroid/tabtalk/AcceptCallActivity;->callStateReceiver:Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;

    if-eqz v0, :cond_f

    .line 49
    iget-object v0, p0, Lcom/apdroid/tabtalk/AcceptCallActivity;->callStateReceiver:Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/AcceptCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apdroid/tabtalk/AcceptCallActivity;->callStateReceiver:Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;

    .line 52
    :cond_f
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 39
    invoke-direct {p0}, Lcom/apdroid/tabtalk/AcceptCallActivity;->registerCallStateReceiver()V

    .line 40
    invoke-direct {p0}, Lcom/apdroid/tabtalk/AcceptCallActivity;->updateWindowFlags()V

    .line 41
    invoke-direct {p0}, Lcom/apdroid/tabtalk/AcceptCallActivity;->acceptCall()V

    .line 42
    return-void
.end method
