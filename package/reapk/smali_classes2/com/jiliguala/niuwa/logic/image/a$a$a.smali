.class Lcom/jiliguala/niuwa/logic/image/a$a$a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/image/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/image/a$a;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/logic/image/a$a;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 843
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/image/a$a$a;->a:Lcom/jiliguala/niuwa/logic/image/a$a;

    .line 844
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 845
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/image/a$a;Ljava/io/OutputStream;Lcom/jiliguala/niuwa/logic/image/a$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/image/a$a;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lcom/jiliguala/niuwa/logic/image/a$1;

    .prologue
    .line 842
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/image/a$a$a;-><init>(Lcom/jiliguala/niuwa/logic/image/a$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 868
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :goto_0
    return-void

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a$a$a;->a:Lcom/jiliguala/niuwa/logic/image/a$a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/image/a$a;->a(Lcom/jiliguala/niuwa/logic/image/a$a;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 877
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :goto_0
    return-void

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a$a$a;->a:Lcom/jiliguala/niuwa/logic/image/a$a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/image/a$a;->a(Lcom/jiliguala/niuwa/logic/image/a$a;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .prologue
    .line 850
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_0
    return-void

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a$a$a;->a:Lcom/jiliguala/niuwa/logic/image/a$a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/image/a$a;->a(Lcom/jiliguala/niuwa/logic/image/a$a;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 859
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a$a$a;->a:Lcom/jiliguala/niuwa/logic/image/a$a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/image/a$a;->a(Lcom/jiliguala/niuwa/logic/image/a$a;Z)Z

    goto :goto_0
.end method
