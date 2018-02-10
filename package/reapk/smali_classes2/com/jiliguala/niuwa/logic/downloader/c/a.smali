.class public abstract Lcom/jiliguala/niuwa/logic/downloader/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/jiliguala/niuwa/logic/downloader/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/b/a;

    invoke-direct {v0, p1}, Lcom/jiliguala/niuwa/logic/downloader/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/c/a;->a:Lcom/jiliguala/niuwa/logic/downloader/b/a;

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/c/a;->a:Lcom/jiliguala/niuwa/logic/downloader/b/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/downloader/b/a;->close()V

    .line 30
    return-void
.end method

.method public abstract a(Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;
.end method

.method public abstract b(Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;)V
.end method
