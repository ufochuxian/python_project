.class Lu/aly/dh$13;
.super Lu/aly/dd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/dh;->a(Lu/aly/l;Ljava/util/List;)V
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
    .line 253
    iput-object p1, p0, Lu/aly/dh$13;->a:Lu/aly/dh;

    invoke-direct {p0}, Lu/aly/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 256
    instance-of v0, p1, Lu/aly/h;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lu/aly/dh$13;->a:Lu/aly/dh;

    check-cast p1, Lu/aly/h;

    invoke-static {v0, p1}, Lu/aly/dh;->a(Lu/aly/dh;Lu/aly/h;)Lu/aly/h;

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lu/aly/dh$13;->a:Lu/aly/dh;

    invoke-static {v0}, Lu/aly/dh;->i(Lu/aly/dh;)V

    goto :goto_0
.end method
