.class Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 947
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    .line 948
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 949
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Ljava/io/OutputStream;Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;

    .prologue
    .line 946
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 973
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :goto_0
    return-void

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 982
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :goto_0
    return-void

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .prologue
    .line 954
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    :goto_0
    return-void

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 963
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 964
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :goto_0
    return-void

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Z)Z

    goto :goto_0
.end method
