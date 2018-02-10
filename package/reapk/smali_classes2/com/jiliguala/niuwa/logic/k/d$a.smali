.class public Lcom/jiliguala/niuwa/logic/k/d$a;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/k/d;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/k/d;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/k/d;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/d$a;->a:Lcom/jiliguala/niuwa/logic/k/d;

    .line 31
    const-string v0, "RECORD_PARSE_THREAD"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
