.class Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer$a;->a:Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer$1;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer$a;-><init>(Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 114
    const-wide/32 v0, 0x493e0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer$a;->a:Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;->access$300(Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method
