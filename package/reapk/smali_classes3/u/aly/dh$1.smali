.class Lu/aly/dh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/dh;


# direct methods
.method constructor <init>(Lu/aly/dh;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lu/aly/dh$1;->a:Lu/aly/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 64
    iget-object v0, p0, Lu/aly/dh$1;->a:Lu/aly/dh;

    invoke-static {v0}, Lu/aly/dh;->a(Lu/aly/dh;)Lu/aly/dh$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lu/aly/dh$1;->a:Lu/aly/dh;

    new-instance v1, Lu/aly/dh$a;

    iget-object v2, p0, Lu/aly/dh$1;->a:Lu/aly/dh;

    invoke-direct {v1, v2}, Lu/aly/dh$a;-><init>(Lu/aly/dh;)V

    invoke-static {v0, v1}, Lu/aly/dh;->a(Lu/aly/dh;Lu/aly/dh$a;)Lu/aly/dh$a;

    .line 68
    :cond_0
    iget-object v0, p0, Lu/aly/dh$1;->a:Lu/aly/dh;

    invoke-static {v0}, Lu/aly/dh;->b(Lu/aly/dh;)V

    .line 69
    return-void
.end method
