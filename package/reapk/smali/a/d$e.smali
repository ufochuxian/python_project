.class La/d$e;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field public a:La/a;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 116
    new-instance v0, La/a;

    invoke-direct {v0}, La/a;-><init>()V

    iput-object v0, p0, La/d$e;->a:La/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, La/d$e;->a:La/a;

    invoke-virtual {v0}, La/a;->a()V

    .line 121
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, La/d$e;->a:La/a;

    invoke-virtual {v0}, La/a;->b()I

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 136
    iget-object v0, p0, La/d$e;->a:La/a;

    invoke-virtual {v0, p1}, La/a;->a(I)V

    .line 137
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B

    .prologue
    .line 128
    iget-object v0, p0, La/d$e;->a:La/a;

    invoke-virtual {v0, p1}, La/a;->a([B)V

    .line 129
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 132
    iget-object v0, p0, La/d$e;->a:La/a;

    invoke-virtual {v0, p1, p2, p3}, La/a;->a([BII)V

    .line 133
    return-void
.end method
