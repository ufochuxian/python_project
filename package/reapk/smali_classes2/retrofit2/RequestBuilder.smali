.class final Lretrofit2/RequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ALWAYS_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|\\?#"


# instance fields
.field private final baseUrl:Lokhttp3/u;

.field private body:Lokhttp3/ab;

.field private contentType:Lokhttp3/w;

.field private formBuilder:Lokhttp3/r$a;

.field private final hasBody:Z

.field private final method:Ljava/lang/String;

.field private multipartBuilder:Lokhttp3/x$a;

.field private relativeUrl:Ljava/lang/String;

.field private final requestBuilder:Lokhttp3/aa$a;

.field private urlBuilder:Lokhttp3/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lokhttp3/u;Ljava/lang/String;Lokhttp3/t;Lokhttp3/w;ZZZ)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Lokhttp3/u;
    .param p3, "relativeUrl"    # Ljava/lang/String;
    .param p4, "headers"    # Lokhttp3/t;
    .param p5, "contentType"    # Lokhttp3/w;
    .param p6, "hasBody"    # Z
    .param p7, "isFormEncoded"    # Z
    .param p8, "isMultipart"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/u;

    .line 52
    iput-object p3, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 53
    new-instance v0, Lokhttp3/aa$a;

    invoke-direct {v0}, Lokhttp3/aa$a;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/aa$a;

    .line 54
    iput-object p5, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/w;

    .line 55
    iput-boolean p6, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    .line 57
    if-eqz p4, :cond_0

    .line 58
    iget-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/aa$a;

    invoke-virtual {v0, p4}, Lokhttp3/aa$a;->a(Lokhttp3/t;)Lokhttp3/aa$a;

    .line 61
    :cond_0
    if-eqz p7, :cond_2

    .line 63
    new-instance v0, Lokhttp3/r$a;

    invoke-direct {v0}, Lokhttp3/r$a;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/r$a;

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    if-eqz p8, :cond_1

    .line 66
    new-instance v0, Lokhttp3/x$a;

    invoke-direct {v0}, Lokhttp3/x$a;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/x$a;

    .line 67
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/x$a;

    sget-object v1, Lokhttp3/x;->e:Lokhttp3/w;

    invoke-virtual {v0, v1}, Lokhttp3/x$a;->a(Lokhttp3/w;)Lokhttp3/x$a;

    goto :goto_0
.end method

.method private static canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "alreadyEncoded"    # Z

    .prologue
    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "limit":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 100
    .local v0, "codePoint":I
    const/16 v4, 0x20

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_0

    const-string v4, " \"<>^`{}|\\?#"

    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    if-nez p1, :cond_2

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_0

    const/16 v4, 0x25

    if-ne v0, v4, :cond_2

    .line 104
    :cond_0
    new-instance v3, Lokio/c;

    invoke-direct {v3}, Lokio/c;-><init>()V

    .line 105
    .local v3, "out":Lokio/c;
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v1}, Lokio/c;->a(Ljava/lang/String;II)Lokio/c;

    .line 106
    invoke-static {v3, p0, v1, v2, p1}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Lokio/c;Ljava/lang/String;IIZ)V

    .line 107
    invoke-virtual {v3}, Lokio/c;->s()Ljava/lang/String;

    move-result-object p0

    .line 112
    .end local v0    # "codePoint":I
    .end local v3    # "out":Lokio/c;
    .end local p0    # "input":Ljava/lang/String;
    :cond_1
    return-object p0

    .line 98
    .restart local v0    # "codePoint":I
    .restart local p0    # "input":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0
.end method

.method private static canonicalizeForPath(Lokio/c;Ljava/lang/String;IIZ)V
    .locals 7
    .param p0, "out"    # Lokio/c;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "alreadyEncoded"    # Z

    .prologue
    const/16 v6, 0x25

    .line 117
    const/4 v3, 0x0

    .line 119
    .local v3, "utf8Buffer":Lokio/c;
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_5

    .line 120
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 121
    .local v1, "codePoint":I
    if-eqz p4, :cond_1

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    const/16 v4, 0xa

    if-eq v1, v4, :cond_0

    const/16 v4, 0xc

    if-eq v1, v4, :cond_0

    const/16 v4, 0xd

    if-ne v1, v4, :cond_1

    .line 119
    :cond_0
    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 124
    :cond_1
    const/16 v4, 0x20

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7f

    if-ge v1, v4, :cond_2

    const-string v4, " \"<>^`{}|\\?#"

    .line 125
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    if-nez p4, :cond_4

    const/16 v4, 0x2f

    if-eq v1, v4, :cond_2

    if-ne v1, v6, :cond_4

    .line 128
    :cond_2
    if-nez v3, :cond_3

    .line 129
    new-instance v3, Lokio/c;

    .end local v3    # "utf8Buffer":Lokio/c;
    invoke-direct {v3}, Lokio/c;-><init>()V

    .line 131
    .restart local v3    # "utf8Buffer":Lokio/c;
    :cond_3
    invoke-virtual {v3, v1}, Lokio/c;->a(I)Lokio/c;

    .line 132
    :goto_2
    invoke-virtual {v3}, Lokio/c;->f()Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    invoke-virtual {v3}, Lokio/c;->i()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 134
    .local v0, "b":I
    invoke-virtual {p0, v6}, Lokio/c;->b(I)Lokio/c;

    .line 135
    sget-object v4, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lokio/c;->b(I)Lokio/c;

    .line 136
    sget-object v4, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lokio/c;->b(I)Lokio/c;

    goto :goto_2

    .line 140
    .end local v0    # "b":I
    :cond_4
    invoke-virtual {p0, v1}, Lokio/c;->a(I)Lokio/c;

    goto :goto_1

    .line 143
    .end local v1    # "codePoint":I
    :cond_5
    return-void
.end method


# virtual methods
.method addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoded"    # Z

    .prologue
    .line 164
    if-eqz p3, :cond_0

    .line 165
    iget-object v0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/r$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/r$a;

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/r$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/r$a;

    goto :goto_0
.end method

.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v1, "Content-Type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-static {p2}, Lokhttp3/w;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v0

    .line 79
    .local v0, "type":Lokhttp3/w;
    if-nez v0, :cond_0

    .line 80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    iput-object v0, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/w;

    .line 86
    .end local v0    # "type":Lokhttp3/w;
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/aa$a;

    invoke-virtual {v1, p1, p2}, Lokhttp3/aa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    goto :goto_0
.end method

.method addPart(Lokhttp3/t;Lokhttp3/ab;)V
    .locals 1
    .param p1, "headers"    # Lokhttp3/t;
    .param p2, "body"    # Lokhttp3/ab;

    .prologue
    .line 172
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/x$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/x$a;->a(Lokhttp3/t;Lokhttp3/ab;)Lokhttp3/x$a;

    .line 173
    return-void
.end method

.method addPart(Lokhttp3/x$b;)V
    .locals 1
    .param p1, "part"    # Lokhttp3/x$b;

    .prologue
    .line 176
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/x$a;

    invoke-virtual {v0, p1}, Lokhttp3/x$a;->a(Lokhttp3/x$b;)Lokhttp3/x$a;

    .line 177
    return-void
.end method

.method addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoded"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 94
    return-void
.end method

.method addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoded"    # Z

    .prologue
    .line 146
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/u;

    iget-object v1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/u;->f(Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/u$a;

    .line 149
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/u$a;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/u;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 156
    :cond_1
    if-eqz p3, :cond_2

    .line 157
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/u$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/u$a;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/u$a;

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_2
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/u$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/u$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/u$a;

    goto :goto_0
.end method

.method build()Lokhttp3/aa;
    .locals 8

    .prologue
    .line 185
    iget-object v4, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/u$a;

    .line 186
    .local v4, "urlBuilder":Lokhttp3/u$a;
    if-eqz v4, :cond_3

    .line 187
    invoke-virtual {v4}, Lokhttp3/u$a;->c()Lokhttp3/u;

    move-result-object v3

    .line 197
    .local v3, "url":Lokhttp3/u;
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/ab;

    .line 198
    .local v0, "body":Lokhttp3/ab;
    if-nez v0, :cond_1

    .line 200
    iget-object v5, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/r$a;

    if-eqz v5, :cond_4

    .line 201
    iget-object v5, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/r$a;

    invoke-virtual {v5}, Lokhttp3/r$a;->a()Lokhttp3/r;

    move-result-object v0

    .line 210
    :cond_1
    :goto_0
    iget-object v2, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/w;

    .line 211
    .local v2, "contentType":Lokhttp3/w;
    if-eqz v2, :cond_2

    .line 212
    if-eqz v0, :cond_6

    .line 213
    new-instance v1, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v1, v0, v2}, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lokhttp3/ab;Lokhttp3/w;)V

    .end local v0    # "body":Lokhttp3/ab;
    .local v1, "body":Lokhttp3/ab;
    move-object v0, v1

    .line 219
    .end local v1    # "body":Lokhttp3/ab;
    .restart local v0    # "body":Lokhttp3/ab;
    :cond_2
    :goto_1
    iget-object v5, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/aa$a;

    .line 220
    invoke-virtual {v5, v3}, Lokhttp3/aa$a;->a(Lokhttp3/u;)Lokhttp3/aa$a;

    move-result-object v5

    iget-object v6, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    .line 221
    invoke-virtual {v5, v6, v0}, Lokhttp3/aa$a;->a(Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v5

    .line 222
    invoke-virtual {v5}, Lokhttp3/aa$a;->d()Lokhttp3/aa;

    move-result-object v5

    .line 219
    return-object v5

    .line 190
    .end local v0    # "body":Lokhttp3/ab;
    .end local v2    # "contentType":Lokhttp3/w;
    .end local v3    # "url":Lokhttp3/u;
    :cond_3
    iget-object v5, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/u;

    iget-object v6, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lokhttp3/u;->e(Ljava/lang/String;)Lokhttp3/u;

    move-result-object v3

    .line 191
    .restart local v3    # "url":Lokhttp3/u;
    if-nez v3, :cond_0

    .line 192
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed URL. Base: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/u;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Relative: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    .restart local v0    # "body":Lokhttp3/ab;
    :cond_4
    iget-object v5, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/x$a;

    if-eqz v5, :cond_5

    .line 203
    iget-object v5, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/x$a;

    invoke-virtual {v5}, Lokhttp3/x$a;->a()Lokhttp3/x;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_5
    iget-boolean v5, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    if-eqz v5, :cond_1

    .line 206
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [B

    invoke-static {v5, v6}, Lokhttp3/ab;->create(Lokhttp3/w;[B)Lokhttp3/ab;

    move-result-object v0

    goto :goto_0

    .line 215
    .restart local v2    # "contentType":Lokhttp3/w;
    :cond_6
    iget-object v5, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/aa$a;

    const-string v6, "Content-Type"

    invoke-virtual {v2}, Lokhttp3/w;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lokhttp3/aa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    goto :goto_1
.end method

.method setBody(Lokhttp3/ab;)V
    .locals 0
    .param p1, "body"    # Lokhttp3/ab;

    .prologue
    .line 180
    iput-object p1, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/ab;

    .line 181
    return-void
.end method

.method setRelativeUrl(Ljava/lang/Object;)V
    .locals 2
    .param p1, "relativeUrl"    # Ljava/lang/Object;

    .prologue
    .line 72
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "@Url parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 74
    return-void
.end method
