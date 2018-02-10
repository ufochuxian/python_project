.class Lu/aly/dh$3;
.super Lu/aly/dd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/dh;->b(Lu/aly/dd;)V
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
    .line 365
    iput-object p1, p0, Lu/aly/dh$3;->a:Lu/aly/dh;

    invoke-direct {p0}, Lu/aly/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 368
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lu/aly/dh$3;->a:Lu/aly/dh;

    invoke-static {v0}, Lu/aly/dh;->k(Lu/aly/dh;)V

    .line 371
    :cond_0
    return-void
.end method
