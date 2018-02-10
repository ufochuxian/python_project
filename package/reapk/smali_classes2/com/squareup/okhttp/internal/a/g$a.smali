.class Lcom/squareup/okhttp/internal/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/a/g;

.field private final b:I

.field private final c:Lcom/squareup/okhttp/v;

.field private d:I


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/a/g;ILcom/squareup/okhttp/v;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/a/g;
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 765
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/g$a;->a:Lcom/squareup/okhttp/internal/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput p2, p0, Lcom/squareup/okhttp/internal/a/g$a;->b:I

    .line 767
    iput-object p3, p0, Lcom/squareup/okhttp/internal/a/g$a;->c:Lcom/squareup/okhttp/v;

    .line 768
    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/i;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g$a;->a:Lcom/squareup/okhttp/internal/a/g;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/internal/a/g;)Lcom/squareup/okhttp/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x;
    .locals 10
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 779
    iget v7, p0, Lcom/squareup/okhttp/internal/a/g$a;->d:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/squareup/okhttp/internal/a/g$a;->d:I

    .line 781
    iget v7, p0, Lcom/squareup/okhttp/internal/a/g$a;->b:I

    if-lez v7, :cond_2

    .line 782
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g$a;->a:Lcom/squareup/okhttp/internal/a/g;

    iget-object v7, v7, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v7}, Lcom/squareup/okhttp/t;->w()Ljava/util/List;

    move-result-object v7

    iget v8, p0, Lcom/squareup/okhttp/internal/a/g$a;->b:I

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/okhttp/q;

    .line 783
    .local v2, "caller":Lcom/squareup/okhttp/q;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/g$a;->a()Lcom/squareup/okhttp/i;

    move-result-object v7

    invoke-virtual {v7}, Lcom/squareup/okhttp/i;->d()Lcom/squareup/okhttp/z;

    move-result-object v7

    invoke-virtual {v7}, Lcom/squareup/okhttp/z;->a()Lcom/squareup/okhttp/a;

    move-result-object v0

    .line 786
    .local v0, "address":Lcom/squareup/okhttp/a;
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/squareup/okhttp/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 787
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v7

    invoke-static {v7}, Lcom/squareup/okhttp/internal/j;->a(Ljava/net/URL;)I

    move-result v7

    invoke-virtual {v0}, Lcom/squareup/okhttp/a;->b()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 788
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network interceptor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " must retain the same host and port"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 793
    :cond_1
    iget v7, p0, Lcom/squareup/okhttp/internal/a/g$a;->d:I

    if-le v7, v9, :cond_2

    .line 794
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network interceptor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " must call proceed() exactly once"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 799
    .end local v0    # "address":Lcom/squareup/okhttp/a;
    .end local v2    # "caller":Lcom/squareup/okhttp/q;
    :cond_2
    iget v7, p0, Lcom/squareup/okhttp/internal/a/g$a;->b:I

    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g$a;->a:Lcom/squareup/okhttp/internal/a/g;

    iget-object v8, v8, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v8}, Lcom/squareup/okhttp/t;->w()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 801
    new-instance v3, Lcom/squareup/okhttp/internal/a/g$a;

    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g$a;->a:Lcom/squareup/okhttp/internal/a/g;

    iget v8, p0, Lcom/squareup/okhttp/internal/a/g$a;->b:I

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v3, v7, v8, p1}, Lcom/squareup/okhttp/internal/a/g$a;-><init>(Lcom/squareup/okhttp/internal/a/g;ILcom/squareup/okhttp/v;)V

    .line 802
    .local v3, "chain":Lcom/squareup/okhttp/internal/a/g$a;
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g$a;->a:Lcom/squareup/okhttp/internal/a/g;

    iget-object v7, v7, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v7}, Lcom/squareup/okhttp/t;->w()Ljava/util/List;

    move-result-object v7

    iget v8, p0, Lcom/squareup/okhttp/internal/a/g$a;->b:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/okhttp/q;

    .line 803
    .local v5, "interceptor":Lcom/squareup/okhttp/q;
    invoke-interface {v5, v3}, Lcom/squareup/okhttp/q;->a(Lcom/squareup/okhttp/q$a;)Lcom/squareup/okhttp/x;

    move-result-object v4

    .line 806
    .local v4, "interceptedResponse":Lcom/squareup/okhttp/x;
    iget v7, v3, Lcom/squareup/okhttp/internal/a/g$a;->d:I

    if-eq v7, v9, :cond_5

    .line 807
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network interceptor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " must call proceed() exactly once"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 814
    .end local v3    # "chain":Lcom/squareup/okhttp/internal/a/g$a;
    .end local v4    # "interceptedResponse":Lcom/squareup/okhttp/x;
    .end local v5    # "interceptor":Lcom/squareup/okhttp/q;
    :cond_3
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g$a;->a:Lcom/squareup/okhttp/internal/a/g;

    invoke-static {v7}, Lcom/squareup/okhttp/internal/a/g;->b(Lcom/squareup/okhttp/internal/a/g;)Lcom/squareup/okhttp/internal/a/q;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/squareup/okhttp/internal/a/q;->a(Lcom/squareup/okhttp/v;)V

    .line 816
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g$a;->a:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/a/g;->c()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->f()Lcom/squareup/okhttp/w;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 817
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g$a;->a:Lcom/squareup/okhttp/internal/a/g;

    invoke-static {v7}, Lcom/squareup/okhttp/internal/a/g;->b(Lcom/squareup/okhttp/internal/a/g;)Lcom/squareup/okhttp/internal/a/q;

    move-result-object v7

    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->f()Lcom/squareup/okhttp/w;

    move-result-object v8

    invoke-virtual {v8}, Lcom/squareup/okhttp/w;->b()J

    move-result-wide v8

    invoke-interface {v7, p1, v8, v9}, Lcom/squareup/okhttp/internal/a/q;->a(Lcom/squareup/okhttp/v;J)Lokio/w;

    move-result-object v6

    .line 818
    .local v6, "requestBodyOut":Lokio/w;
    invoke-static {v6}, Lokio/o;->a(Lokio/w;)Lokio/d;

    move-result-object v1

    .line 819
    .local v1, "bufferedRequestBody":Lokio/d;
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->f()Lcom/squareup/okhttp/w;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/squareup/okhttp/w;->a(Lokio/d;)V

    .line 820
    invoke-interface {v1}, Lokio/d;->close()V

    .line 823
    .end local v1    # "bufferedRequestBody":Lokio/d;
    .end local v6    # "requestBodyOut":Lokio/w;
    :cond_4
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g$a;->a:Lcom/squareup/okhttp/internal/a/g;

    invoke-static {v7}, Lcom/squareup/okhttp/internal/a/g;->c(Lcom/squareup/okhttp/internal/a/g;)Lcom/squareup/okhttp/x;

    move-result-object v4

    :cond_5
    return-object v4
.end method

.method public b()Lcom/squareup/okhttp/v;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g$a;->c:Lcom/squareup/okhttp/v;

    return-object v0
.end method
