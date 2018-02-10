.class Lcom/github/sahasbhop/a/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/sahasbhop/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/github/sahasbhop/a/a/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/github/sahasbhop/a/a/f$a;->b:Ljava/io/File;

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/sahasbhop/a/a/f$a;->a:J

    .line 186
    return-void
.end method


# virtual methods
.method public a(Lcom/github/sahasbhop/a/a/f$a;)I
    .locals 4
    .param p1, "o"    # Lcom/github/sahasbhop/a/a/f$a;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 189
    iget-wide v0, p1, Lcom/github/sahasbhop/a/a/f$a;->a:J

    .line 190
    .local v0, "u":J
    iget-wide v2, p0, Lcom/github/sahasbhop/a/a/f$a;->a:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    iget-wide v2, p0, Lcom/github/sahasbhop/a/a/f$a;->a:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 179
    check-cast p1, Lcom/github/sahasbhop/a/a/f$a;

    invoke-virtual {p0, p1}, Lcom/github/sahasbhop/a/a/f$a;->a(Lcom/github/sahasbhop/a/a/f$a;)I

    move-result v0

    return v0
.end method
