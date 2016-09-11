.class Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AcceptCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apdroid/tabtalk/AcceptCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apdroid/tabtalk/AcceptCallActivity;


# direct methods
.method private constructor <init>(Lcom/apdroid/tabtalk/AcceptCallActivity;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;->this$0:Lcom/apdroid/tabtalk/AcceptCallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apdroid/tabtalk/AcceptCallActivity;Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;)V
    .registers 3

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;-><init>(Lcom/apdroid/tabtalk/AcceptCallActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/apdroid/tabtalk/AcceptCallActivity$CallStateReceiver;->this$0:Lcom/apdroid/tabtalk/AcceptCallActivity;

    invoke-virtual {v0}, Lcom/apdroid/tabtalk/AcceptCallActivity;->finish()V

    .line 125
    return-void
.end method
