.class Lu/aly/dh$4;
.super Lu/aly/dd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/dh;->n()V
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
    .line 399
    iput-object p1, p0, Lu/aly/dh$4;->a:Lu/aly/dh;

    invoke-direct {p0}, Lu/aly/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lu/aly/dh$4;->a:Lu/aly/dh;

    check-cast p1, Lu/aly/p;

    invoke-static {v0, p1}, Lu/aly/dh;->a(Lu/aly/dh;Lu/aly/p;)Lu/aly/p;

    .line 403
    return-void
.end method
