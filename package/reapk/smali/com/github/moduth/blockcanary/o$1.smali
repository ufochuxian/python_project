.class final Lcom/github/moduth/blockcanary/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/o;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/github/moduth/blockcanary/o;->b()Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {}, Lcom/github/moduth/blockcanary/d;->b()Lcom/github/moduth/blockcanary/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/moduth/blockcanary/c;->a(Ljava/io/File;)V

    .line 57
    :cond_0
    return-void
.end method
