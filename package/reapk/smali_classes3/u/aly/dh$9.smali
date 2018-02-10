.class Lu/aly/dh$9;
.super Lu/aly/dd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/dh;->p()V
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
    .line 478
    iput-object p1, p0, Lu/aly/dh$9;->a:Lu/aly/dh;

    invoke-direct {p0}, Lu/aly/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 482
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lu/aly/dh$9;->a:Lu/aly/dh;

    invoke-static {v0}, Lu/aly/dh;->j(Lu/aly/dh;)Lu/aly/p;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/p;->b()V

    .line 485
    :cond_0
    return-void
.end method
