.class public Lcom/jiliguala/niuwa/common/widget/switchbutton/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/switchbutton/a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x10

.field private static final b:I = 0x3e8

.field private static final c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/switchbutton/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/switchbutton/a$a;-><init>(Lcom/jiliguala/niuwa/common/widget/switchbutton/a$1;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/switchbutton/a;->c:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 16
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 17
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 18
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/switchbutton/a;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 23
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 24
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 25
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/switchbutton/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 27
    return-void
.end method
