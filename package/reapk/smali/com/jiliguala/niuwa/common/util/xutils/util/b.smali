.class public Lcom/jiliguala/niuwa/common/util/xutils/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ISO-8859-1"

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b:Ljava/util/List;

    .line 32
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b:Ljava/util/List;

    const-string v1, "ISO-8859-1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b:Ljava/util/List;

    const-string v1, "GB2312"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b:Ljava/util/List;

    const-string v1, "GBK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b:Ljava/util/List;

    const-string v1, "GB18030"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b:Ljava/util/List;

    const-string v1, "US-ASCII"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b:Ljava/util/List;

    const-string v1, "ASCII"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b:Ljava/util/List;

    const-string v1, "ISO-2022-KR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b:Ljava/util/List;

    const-string v1, "ISO-8859-2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b:Ljava/util/List;

    const-string v1, "ISO-2022-JP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b:Ljava/util/List;

    const-string v1, "ISO-2022-JP-2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b:Ljava/util/List;

    const-string v1, "UTF-8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "judgeCharsetLength"    # I

    .prologue
    .line 65
    const-string v1, "ISO-8859-1"

    .line 66
    .local v1, "encode":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "charset":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->b(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    move-object v1, v0

    .line 72
    .end local v0    # "charset":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "judgeCharsetLength"    # I

    .prologue
    .line 56
    :try_start_0
    invoke-static {p0, p2}, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "oldCharset":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    .line 60
    .end local v1    # "oldCharset":Ljava/lang/String;
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 58
    .restart local p0    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "judgeCharsetLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "temp":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 80
    .end local v1    # "temp":Ljava/lang/String;
    :goto_1
    return v2

    :cond_0
    move-object v1, p0

    .line 77
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_1
.end method
