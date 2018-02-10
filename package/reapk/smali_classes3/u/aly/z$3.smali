.class Lu/aly/z$3;
.super Lu/aly/bc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/z;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/z;


# direct methods
.method constructor <init>(Lu/aly/z;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lu/aly/z$3;->a:Lu/aly/z;

    invoke-direct {p0}, Lu/aly/bc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lu/aly/z$3;->a:Lu/aly/z;

    invoke-static {v0}, Lu/aly/z;->a(Lu/aly/z;)Lu/aly/ac;

    move-result-object v0

    invoke-interface {v0}, Lu/aly/ac;->b()V

    .line 65
    return-void
.end method
