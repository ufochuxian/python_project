.class public abstract Lcom/jiliguala/niuwa/logic/k/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/k/d$a;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "audio"

.field protected static final b:I = 0x400

.field private static final e:Ljava/lang/String; = "RECORD_PARSE_THREAD"


# instance fields
.field protected c:Lcom/jiliguala/niuwa/logic/k/d$a;

.field protected d:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/jiliguala/niuwa/logic/k/d$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/logic/k/d$a;-><init>(Lcom/jiliguala/niuwa/logic/k/d;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/k/d;->c:Lcom/jiliguala/niuwa/logic/k/d$a;

    .line 20
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/d;->c:Lcom/jiliguala/niuwa/logic/k/d$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/k/d$a;->start()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/k/d;->c:Lcom/jiliguala/niuwa/logic/k/d$a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/k/d$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/d;->c:Lcom/jiliguala/niuwa/logic/k/d$a;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/k/d;->d:Landroid/os/Handler;

    .line 22
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/d;->c:Lcom/jiliguala/niuwa/logic/k/d$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/k/d$a;->quit()Z

    .line 26
    return-void
.end method
