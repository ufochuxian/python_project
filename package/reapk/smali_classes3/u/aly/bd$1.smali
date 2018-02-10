.class Lu/aly/bd$1;
.super Lu/aly/dd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/bd;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/bd;


# direct methods
.method constructor <init>(Lu/aly/bd;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lu/aly/bd$1;->a:Lu/aly/bd;

    invoke-direct {p0}, Lu/aly/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 143
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    :cond_0
    return-void
.end method
