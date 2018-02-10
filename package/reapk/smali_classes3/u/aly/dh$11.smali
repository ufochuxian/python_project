.class Lu/aly/dh$11;
.super Lu/aly/dd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/dh;->a(Lu/aly/dd;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/dd;

.field final synthetic b:Lu/aly/dh;


# direct methods
.method constructor <init>(Lu/aly/dh;Lu/aly/dd;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lu/aly/dh$11;->b:Lu/aly/dh;

    iput-object p2, p0, Lu/aly/dh$11;->a:Lu/aly/dd;

    invoke-direct {p0}, Lu/aly/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 3

    .prologue
    .line 202
    instance-of v0, p1, Lu/aly/h;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lu/aly/dh$11;->b:Lu/aly/dh;

    check-cast p1, Lu/aly/h;

    invoke-static {v0, p1}, Lu/aly/dh;->a(Lu/aly/dh;Lu/aly/h;)Lu/aly/h;

    .line 205
    :cond_0
    iget-object v0, p0, Lu/aly/dh$11;->a:Lu/aly/dd;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lu/aly/dd;->a(Ljava/lang/Object;Z)V

    .line 206
    return-void
.end method
