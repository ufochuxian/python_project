.class Lu/aly/dh$10$1;
.super Lu/aly/dd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/dh$10;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/dh$10;


# direct methods
.method constructor <init>(Lu/aly/dh$10;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lu/aly/dh$10$1;->a:Lu/aly/dh$10;

    invoke-direct {p0}, Lu/aly/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 158
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 159
    check-cast p1, Ljava/util/Map;

    .line 160
    iget-object v0, p0, Lu/aly/dh$10$1;->a:Lu/aly/dh$10;

    iget-object v0, v0, Lu/aly/dh$10;->b:Lu/aly/dh;

    invoke-static {v0}, Lu/aly/dh;->e(Lu/aly/dh;)Lu/aly/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/h;->a(Ljava/util/Map;)V

    .line 168
    :cond_0
    :goto_0
    iget-object v0, p0, Lu/aly/dh$10$1;->a:Lu/aly/dh$10;

    iget-object v0, v0, Lu/aly/dh$10;->b:Lu/aly/dh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/dh;->a(Lu/aly/dh;Z)Z

    .line 169
    return-void

    .line 161
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 164
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_0
.end method
