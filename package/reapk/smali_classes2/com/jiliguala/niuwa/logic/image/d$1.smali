.class Lcom/jiliguala/niuwa/logic/image/d$1;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/image/d;->a()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/image/d;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/image/d;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/image/d;
    .param p2, "x0"    # I

    .prologue
    .line 134
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/image/d$1;->a:Lcom/jiliguala/niuwa/logic/image/d;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 137
    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/d$1;->count:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/d$1;->buf:[B

    iget v3, p0, Lcom/jiliguala/niuwa/logic/image/d$1;->count:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/d$1;->count:I

    add-int/lit8 v1, v2, -0x1

    .line 139
    .local v1, "length":I
    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/d$1;->buf:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/image/d$1;->a:Lcom/jiliguala/niuwa/logic/image/d;

    invoke-static {v5}, Lcom/jiliguala/niuwa/logic/image/d;->a(Lcom/jiliguala/niuwa/logic/image/d;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 137
    .end local v1    # "length":I
    :cond_0
    iget v1, p0, Lcom/jiliguala/niuwa/logic/image/d$1;->count:I

    goto :goto_0

    .line 140
    .restart local v1    # "length":I
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method