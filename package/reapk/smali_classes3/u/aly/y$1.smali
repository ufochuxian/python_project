.class Lu/aly/y$1;
.super Lu/aly/bc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/y;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/y;


# direct methods
.method constructor <init>(Lu/aly/y;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lu/aly/y$1;->a:Lu/aly/y;

    invoke-direct {p0}, Lu/aly/bc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lu/aly/y$1;->a:Lu/aly/y;

    invoke-virtual {v0}, Lu/aly/y;->a()V

    .line 172
    return-void
.end method
