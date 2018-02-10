.class Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
.super Lokhttp3/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentTypeOverridingRequestBody"
.end annotation


# instance fields
.field private final contentType:Lokhttp3/w;

.field private final delegate:Lokhttp3/ab;


# direct methods
.method constructor <init>(Lokhttp3/ab;Lokhttp3/w;)V
    .locals 0
    .param p1, "delegate"    # Lokhttp3/ab;
    .param p2, "contentType"    # Lokhttp3/w;

    .prologue
    .line 229
    invoke-direct {p0}, Lokhttp3/ab;-><init>()V

    .line 230
    iput-object p1, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lokhttp3/ab;

    .line 231
    iput-object p2, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lokhttp3/w;

    .line 232
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lokhttp3/ab;

    invoke-virtual {v0}, Lokhttp3/ab;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/w;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lokhttp3/w;

    return-object v0
.end method

.method public writeTo(Lokio/d;)V
    .locals 1
    .param p1, "sink"    # Lokio/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lokhttp3/ab;

    invoke-virtual {v0, p1}, Lokhttp3/ab;->writeTo(Lokio/d;)V

    .line 244
    return-void
.end method
