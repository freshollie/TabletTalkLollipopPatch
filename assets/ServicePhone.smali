.class public Lcom/apdroid/tabtalk/ServicePhone;
.super Lcom/apdroid/tabtalk/BluetoothService;

# interfaces
.implements Lcom/apdroid/tabtalk/event/k;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private r:Lcom/apdroid/tabtalk/fj;

.field private s:Landroid/media/AudioManager;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lcom/apdroid/tabtalk/event/h;

.field private final x:Landroid/content/BroadcastReceiver;

.field private final y:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/apdroid/tabtalk/ServicePhone;->z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/apdroid/tabtalk/BluetoothService;-><init>()V

    iput-boolean v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->t:Z

    iput-boolean v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->u:Z

    iput-boolean v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->v:Z

    new-instance v0, Lcom/apdroid/tabtalk/ff;

    invoke-direct {v0, p0}, Lcom/apdroid/tabtalk/ff;-><init>(Lcom/apdroid/tabtalk/ServicePhone;)V

    iput-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->x:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/apdroid/tabtalk/fg;

    invoke-direct {v0, p0}, Lcom/apdroid/tabtalk/fg;-><init>(Lcom/apdroid/tabtalk/ServicePhone;)V

    iput-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->y:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(JJIJ)V
    .locals 6

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->m:Lcom/apdroid/tabtalk/util/w;

    move-wide v1, p1

    move v3, p5

    move-wide v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/apdroid/tabtalk/util/w;->a(JIJ)V

    invoke-virtual {p0}, Lcom/apdroid/tabtalk/ServicePhone;->i()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/apdroid/tabtalk/BluetoothService;->i:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p3, p4, p5, p6, p7}, Lcom/apdroid/tabtalk/util/am;->a(JIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 9

    const/4 v6, 0x0

    const-string v0, "pdus"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const-string v1, "format"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    array-length v1, v0

    new-array v3, v1, [[B

    move v2, v6

    :goto_0
    array-length v1, v0

    if-lt v2, v1, :cond_0

    array-length v0, v3

    new-array v1, v0, [[B

    array-length v2, v1

    new-array v5, v2, [Landroid/telephony/SmsMessage;

    move v0, v6

    :goto_1
    if-lt v0, v2, :cond_1

    aget-object v0, v5, v6

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    array-length v2, v5

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/apdroid/tabtalk/ServicePhone;->a(Ljava/lang/String;Ljava/lang/String;JII)V

    return-void

    :cond_0
    aget-object v1, v0, v2

    check-cast v1, [B

    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    aget-object v4, v3, v0

    aput-object v4, v1, v0

    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v6

    :goto_3
    if-lt v0, v2, :cond_3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    aget-object v8, v5, v0

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method static synthetic a(Lcom/apdroid/tabtalk/ServicePhone;)V
    .locals 0

    invoke-direct {p0}, Lcom/apdroid/tabtalk/ServicePhone;->w()V

    return-void
.end method

.method static synthetic a(Lcom/apdroid/tabtalk/ServicePhone;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apdroid/tabtalk/ServicePhone;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/apdroid/tabtalk/ServicePhone;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->r:Lcom/apdroid/tabtalk/fj;

    iput v1, v0, Lcom/apdroid/tabtalk/fj;->a:I

    invoke-virtual {p0}, Lcom/apdroid/tabtalk/ServicePhone;->i()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/apdroid/tabtalk/BluetoothService;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    :try_start_0
    invoke-static {v0, p1}, Lcom/apdroid/tabtalk/util/am;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 7

    invoke-virtual {p0}, Lcom/apdroid/tabtalk/ServicePhone;->i()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/apdroid/tabtalk/BluetoothService;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->m:Lcom/apdroid/tabtalk/util/w;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/apdroid/tabtalk/util/w;->a(Ljava/lang/String;Ljava/lang/String;JII)J

    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/apdroid/tabtalk/util/am;->b(Ljava/lang/String;Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->a(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/apdroid/tabtalk/ServicePhone;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->r:Lcom/apdroid/tabtalk/fj;

    iput v1, v0, Lcom/apdroid/tabtalk/fj;->a:I

    invoke-virtual {p0}, Lcom/apdroid/tabtalk/ServicePhone;->i()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/apdroid/tabtalk/BluetoothService;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0, p1}, Lcom/apdroid/tabtalk/util/am;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/apdroid/tabtalk/ServicePhone;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->t:Z

    return v0
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->r:Lcom/apdroid/tabtalk/fj;

    iput p1, v0, Lcom/apdroid/tabtalk/fj;->a:I

    invoke-virtual {p0}, Lcom/apdroid/tabtalk/ServicePhone;->i()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/apdroid/tabtalk/BluetoothService;->i:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    :try_start_0
    invoke-static {p1, v0}, Lcom/apdroid/tabtalk/util/am;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/apdroid/tabtalk/ServicePhone;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->f(Z)V

    return-void
.end method

.method private f(Z)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    iput-boolean v2, p0, Lcom/apdroid/tabtalk/ServicePhone;->t:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    iput-boolean v1, p0, Lcom/apdroid/tabtalk/ServicePhone;->t:Z

    goto :goto_0
.end method

.method private v()V
    .locals 2

    iget-boolean v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->v:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/apdroid/tabtalk/event/h;->a(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/apdroid/tabtalk/util/aq;->b(Landroid/content/Context;)Lcom/apdroid/tabtalk/util/aq;

    invoke-static {v0, v1}, Lcom/apdroid/tabtalk/util/aq;->a(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->v:Z

    :cond_0
    return-void
.end method

.method private w()V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/apdroid/tabtalk/ServicePhone;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/apdroid/tabtalk/ServicePhone;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "level"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "scale"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v2, v2, 0x64

    div-int v0, v2, v0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/16 v1, 0x2c

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/apdroid/tabtalk/ServicePhone;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private x()Lcom/android/internal/telephony/ITelephony;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getITelephony"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->r:Lcom/apdroid/tabtalk/fj;

    iget v0, v0, Lcom/apdroid/tabtalk/fj;->a:I

    invoke-direct {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->c(I)V

    invoke-direct {p0}, Lcom/apdroid/tabtalk/ServicePhone;->w()V

    invoke-virtual {p0}, Lcom/apdroid/tabtalk/ServicePhone;->o()V

    return-void
.end method

.method protected final a(ILandroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->e:Lcom/apdroid/tabtalk/r;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p2}, Lcom/apdroid/tabtalk/r;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/apdroid/tabtalk/BluetoothService;->a(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(JJJ)V
    .locals 8

    const/4 v5, 0x3

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/apdroid/tabtalk/ServicePhone;->a(JJIJ)V

    return-void
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 12

    const/16 v11, 0x8

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/apdroid/tabtalk/ServicePhone;->d()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/apdroid/tabtalk/ServicePhone;->c()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/apdroid/tabtalk/ServicePhone;->b()V

    goto :goto_0

    :sswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v3, 0x1

    if-ne v2, v6, :cond_1

    move v2, v6

    :goto_1
    and-int/lit8 v4, v3, 0x2

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v3, 0x8

    if-ne v1, v11, :cond_4

    iget-object v1, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    iget-object v1, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v3, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    if-eq v0, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x4f

    invoke-direct {v2, v6, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {p0, v0, v1}, Lcom/apdroid/tabtalk/ServicePhone;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/apdroid/tabtalk/util/ao;

    iget-wide v8, v0, Lcom/apdroid/tabtalk/util/ao;->a:J

    iget-object v1, v0, Lcom/apdroid/tabtalk/util/ao;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/apdroid/tabtalk/util/ao;->c:Ljava/lang/String;

    iget-boolean v10, v0, Lcom/apdroid/tabtalk/util/ao;->d:Z

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->m:Lcom/apdroid/tabtalk/util/w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x6

    invoke-virtual/range {v0 .. v6}, Lcom/apdroid/tabtalk/util/w;->a(Ljava/lang/String;Ljava/lang/String;JII)J

    move-result-wide v4

    iget-object v3, p0, Lcom/apdroid/tabtalk/ServicePhone;->w:Lcom/apdroid/tabtalk/event/h;

    move-wide v6, v8

    move-object v8, v1

    move-object v9, v2

    invoke-virtual/range {v3 .. v10}, Lcom/apdroid/tabtalk/event/h;->a(JJLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v11}, Lcom/apdroid/tabtalk/ServicePhone;->a(I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/apdroid/tabtalk/event/n;

    new-instance v1, Lcom/apdroid/tabtalk/util/af;

    invoke-direct {v1, p0, v0}, Lcom/apdroid/tabtalk/util/af;-><init>(Landroid/content/Context;Lcom/apdroid/tabtalk/event/n;)V

    invoke-virtual {v1}, Lcom/apdroid/tabtalk/util/af;->a()Z

    goto/16 :goto_0

    :sswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_5

    :goto_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    int-to-long v0, v0

    new-instance v2, Lcom/apdroid/tabtalk/fh;

    invoke-direct {v2, p0, v6, v0, v1}, Lcom/apdroid/tabtalk/fh;-><init>(Lcom/apdroid/tabtalk/ServicePhone;ZJ)V

    invoke-virtual {v2}, Lcom/apdroid/tabtalk/fh;->start()V

    goto/16 :goto_0

    :cond_5
    move v6, v0

    goto :goto_2

    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/apdroid/tabtalk/ServicePhone;->v()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.apdroid.tabtalk.event.MESSAGE_DELIVERED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v2, "pdu"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v2

    if-nez v2, :cond_6

    :goto_3
    move v5, v1

    :goto_4
    const-string v1, "idPhone"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "idTab"

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/apdroid/tabtalk/ServicePhone;->a(JJIJ)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->isStatusReportMessage()Z

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v1

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.apdroid.tabtalk.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_8

    iget-boolean v3, p0, Lcom/apdroid/tabtalk/BluetoothService;->i:Z

    if-nez v3, :cond_8

    const/16 v0, 0x2b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/apdroid/tabtalk/ServicePhone;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v6, :cond_9

    :goto_5
    move v5, v1

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_5

    :cond_a
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    :goto_6
    move v5, v1

    goto :goto_4

    :cond_b
    move v1, v2

    goto :goto_6

    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/apdroid/tabtalk/fi;

    invoke-direct {v1, p0, v0}, Lcom/apdroid/tabtalk/fi;-><init>(Lcom/apdroid/tabtalk/ServicePhone;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/apdroid/tabtalk/fi;->start()V

    goto/16 :goto_0

    :sswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/apdroid/tabtalk/util/aw;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Warning: different versions of Tablet Talk detected."

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/apdroid/tabtalk/ServicePhone;->w()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x9 -> :sswitch_a
        0xb -> :sswitch_c
        0xf -> :sswitch_3
        0x11 -> :sswitch_0
        0x12 -> :sswitch_2
        0x14 -> :sswitch_1
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x18 -> :sswitch_9
        0x19 -> :sswitch_6
        0x25 -> :sswitch_7
        0x28 -> :sswitch_b
        0x2a -> :sswitch_d
    .end sparse-switch
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/apdroid/tabtalk/gq;->c(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    const-string v2, "wifi_config"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/apdroid/tabtalk/ServicePhone;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {p0}, Lcom/apdroid/tabtalk/util/aq;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/apdroid/tabtalk/ServicePhone;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/apdroid/tabtalk/ServicePhone;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Lcom/apdroid/tabtalk/ServicePhone;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/apdroid/tabtalk/ServicePhone;->a(Ljava/lang/String;Ljava/lang/String;JII)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/apdroid/tabtalk/ServicePhone;->i()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/apdroid/tabtalk/BluetoothService;->i:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/apdroid/tabtalk/BluetoothService;->i:Z

    if-nez v0, :cond_0

    invoke-static/range {p1 .. p7}, Lcom/apdroid/tabtalk/util/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected final a(ZJ)V
    .locals 18

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/apdroid/tabtalk/ServicePhone;->b(J)V

    if-eqz p1, :cond_1

    const-wide/16 v9, 0x0

    :goto_0
    const-wide/16 v1, -0x64

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/apdroid/tabtalk/ServicePhone;->v:Z

    :goto_1
    return-void

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/apdroid/tabtalk/util/aq;->b(Landroid/content/Context;)Lcom/apdroid/tabtalk/util/aq;

    invoke-static {}, Lcom/apdroid/tabtalk/util/aq;->k()J

    move-result-wide v9

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(type = 1 OR type = 2) AND _id > "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    const/4 v8, 0x0

    const/4 v7, 0x0

    sget-object v2, Lcom/apdroid/tabtalk/data/m;->a:Landroid/net/Uri;

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/apdroid/tabtalk/ServicePhone;->i:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/apdroid/tabtalk/ServicePhone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/apdroid/tabtalk/ServicePhone;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "thread_id ASC, _id ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    if-ge v2, v1, :cond_7

    mul-int/lit16 v1, v2, 0xc8

    :goto_3
    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v2}, Lcom/apdroid/tabtalk/util/am;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/apdroid/tabtalk/ServicePhone;->f(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v7

    move-wide v1, v9

    move-object v9, v3

    move v3, v8

    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/apdroid/tabtalk/ServicePhone;->i()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_8

    :cond_3
    invoke-static {}, Lcom/apdroid/tabtalk/util/am;->a()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/apdroid/tabtalk/ServicePhone;->f(Ljava/lang/String;)V

    :cond_4
    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/apdroid/tabtalk/ServicePhone;->i:Z

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/apdroid/tabtalk/ServicePhone;->v:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/apdroid/tabtalk/ServicePhone;->b(Z)V

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    mul-long v3, v3, p2

    sub-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(type = 1 OR type = 2) AND _id > "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND date > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_7
    const v1, 0x13880

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v10, v7, v1

    if-lez v10, :cond_11

    :goto_5
    const/4 v1, 0x5

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v1, 0x3

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/4 v1, 0x4

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v10, 0x1

    if-ne v1, v10, :cond_12

    const/4 v1, 0x2

    move v10, v1

    :goto_6
    cmp-long v1, v5, v11

    if-eqz v1, :cond_d

    cmp-long v1, v5, v11

    if-eqz v1, :cond_14

    if-lez v3, :cond_9

    invoke-static {}, Lcom/apdroid/tabtalk/util/am;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/apdroid/tabtalk/util/w;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    move-wide v5, v11

    :goto_7
    if-nez v1, :cond_a

    move-object v1, v2

    :cond_a
    add-int/lit8 v9, v3, 0x1

    invoke-static {v9, v4, v1}, Lcom/apdroid/tabtalk/util/am;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    if-nez v1, :cond_c

    :cond_b
    const-string v3, "Unknown"

    invoke-static {v9, v4, v3}, Lcom/apdroid/tabtalk/util/am;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_c
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v9

    move-object v9, v1

    :cond_d
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v2, v15, v11, v12, v10}, Lcom/apdroid/tabtalk/util/am;->a(Ljava/lang/String;Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v4, 0x1

    :goto_8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->capacity()I

    move-result v4

    add-int/lit16 v4, v4, -0xc8

    if-ge v2, v4, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    invoke-interface {v13}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/apdroid/tabtalk/util/am;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/apdroid/tabtalk/ServicePhone;->f(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static/range {p0 .. p0}, Lcom/apdroid/tabtalk/util/aq;->b(Landroid/content/Context;)Lcom/apdroid/tabtalk/util/aq;

    invoke-static {v7, v8}, Lcom/apdroid/tabtalk/util/aq;->a(J)V

    :cond_10
    move v4, v1

    move-wide v1, v7

    goto/16 :goto_4

    :cond_11
    move-wide v7, v1

    goto/16 :goto_5

    :cond_12
    const/4 v1, 0x1

    move v10, v1

    goto :goto_6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    move v1, v4

    goto :goto_8

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_14
    move-object v1, v9

    goto :goto_7
.end method

.method protected final b()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/apdroid/tabtalk/ServicePhone;->x()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/apdroid/tabtalk/ServicePhone;->f(Z)V

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/apdroid/tabtalk/ServicePhone;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/apdroid/tabtalk/ServicePhone;->a(Ljava/lang/String;Ljava/lang/String;JII)V

    return-void
.end method

.method protected final c()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/apdroid/tabtalk/ServicePhone;->x()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->l:Lcom/apdroid/tabtalk/j;

    invoke-virtual {v0}, Lcom/apdroid/tabtalk/j;->b()V

    return-void
.end method

.method protected final d()V
    .locals 2
    
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/apdroid/tabtalk/AcceptCallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10808000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
    
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->a(Z)V

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->c(Z)V

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->k:Lcom/apdroid/tabtalk/gq;

    invoke-virtual {v0}, Lcom/apdroid/tabtalk/gq;->b()V

    return-void
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected final e(Z)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/apdroid/tabtalk/util/aq;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {p0, v1}, Lcom/apdroid/tabtalk/ServicePhone;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    iput-boolean v3, p0, Lcom/apdroid/tabtalk/ServicePhone;->u:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    iput-boolean v2, p0, Lcom/apdroid/tabtalk/ServicePhone;->u:Z

    goto :goto_0
.end method

.method protected final g()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/apdroid/tabtalk/BluetoothService;->g()V

    invoke-virtual {p0, v2}, Lcom/apdroid/tabtalk/ServicePhone;->b(Z)V

    iget v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->k:Lcom/apdroid/tabtalk/gq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->k:Lcom/apdroid/tabtalk/gq;

    invoke-virtual {v0}, Lcom/apdroid/tabtalk/gq;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->g:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->l:Lcom/apdroid/tabtalk/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->l:Lcom/apdroid/tabtalk/j;

    invoke-virtual {v0}, Lcom/apdroid/tabtalk/j;->b()V

    goto :goto_0
.end method

.method public final declared-synchronized l()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/apdroid/tabtalk/BluetoothService;->l()V

    invoke-direct {p0}, Lcom/apdroid/tabtalk/ServicePhone;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m()V
    .locals 2

    invoke-virtual {p0}, Lcom/apdroid/tabtalk/ServicePhone;->i()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->e(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->e(Z)V

    goto :goto_0
.end method

.method protected final n()V
    .locals 3

    invoke-super {p0}, Lcom/apdroid/tabtalk/BluetoothService;->n()V

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->w:Lcom/apdroid/tabtalk/event/h;

    invoke-virtual {v0}, Lcom/apdroid/tabtalk/event/h;->b()V

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/apdroid/tabtalk/ServicePhone;->r:Lcom/apdroid/tabtalk/fj;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Lcom/apdroid/tabtalk/BluetoothService;->onCreate()V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->s:Landroid/media/AudioManager;

    new-instance v0, Lcom/apdroid/tabtalk/event/h;

    iget-object v1, p0, Lcom/apdroid/tabtalk/ServicePhone;->e:Lcom/apdroid/tabtalk/r;

    invoke-direct {v0, p0, v1, p0}, Lcom/apdroid/tabtalk/event/h;-><init>(Lcom/apdroid/tabtalk/event/k;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->w:Lcom/apdroid/tabtalk/event/h;

    iget-object v0, p0, Lcom/apdroid/tabtalk/ServicePhone;->w:Lcom/apdroid/tabtalk/event/h;

    invoke-virtual {v0}, Lcom/apdroid/tabtalk/event/h;->a()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/apdroid/tabtalk/ServicePhone;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/apdroid/tabtalk/ServicePhone;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/apdroid/tabtalk/ServicePhone;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/apdroid/tabtalk/fj;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/apdroid/tabtalk/fj;-><init>(Lcom/apdroid/tabtalk/ServicePhone;I)V

    iput-object v1, p0, Lcom/apdroid/tabtalk/ServicePhone;->r:Lcom/apdroid/tabtalk/fj;

    iget-object v1, p0, Lcom/apdroid/tabtalk/ServicePhone;->r:Lcom/apdroid/tabtalk/fj;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apdroid/tabtalk/ServicePhone;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/apdroid/tabtalk/ServicePhone;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected final p()V
    .locals 0

    invoke-direct {p0}, Lcom/apdroid/tabtalk/ServicePhone;->v()V

    invoke-super {p0}, Lcom/apdroid/tabtalk/BluetoothService;->p()V

    return-void
.end method

.method public final declared-synchronized u()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/apdroid/tabtalk/ServicePhone;->i()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/apdroid/tabtalk/BluetoothService;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
