.class public Lar/com/hjg/pngj/b;
.super Lar/com/hjg/pngj/c;
.source "SourceFile"


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lar/com/hjg/pngj/c;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/b;->a:Z

    .line 13
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .param p1, "checkCrc"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lar/com/hjg/pngj/b;->a:Z

    .line 27
    return-void
.end method

.method protected a(ILjava/lang/String;)Z
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-boolean v0, p0, Lar/com/hjg/pngj/b;->a:Z

    return v0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method
