.class Lcom/squareup/okhttp/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/e;

.field private final b:I

.field private final c:Lcom/squareup/okhttp/v;

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/e;ILcom/squareup/okhttp/v;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/e;
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/squareup/okhttp/v;
    .param p4, "forWebSocket"    # Z

    .prologue
    .line 207
    iput-object p1, p0, Lcom/squareup/okhttp/e$a;->a:Lcom/squareup/okhttp/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p2, p0, Lcom/squareup/okhttp/e$a;->b:I

    .line 209
    iput-object p3, p0, Lcom/squareup/okhttp/e$a;->c:Lcom/squareup/okhttp/v;

    .line 210
    iput-boolean p4, p0, Lcom/squareup/okhttp/e$a;->d:Z

    .line 211
    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/i;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x;
    .locals 4
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget v1, p0, Lcom/squareup/okhttp/e$a;->b:I

    iget-object v2, p0, Lcom/squareup/okhttp/e$a;->a:Lcom/squareup/okhttp/e;

    invoke-static {v2}, Lcom/squareup/okhttp/e;->b(Lcom/squareup/okhttp/e;)Lcom/squareup/okhttp/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/t;->v()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 224
    new-instance v0, Lcom/squareup/okhttp/e$a;

    iget-object v1, p0, Lcom/squareup/okhttp/e$a;->a:Lcom/squareup/okhttp/e;

    iget v2, p0, Lcom/squareup/okhttp/e$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lcom/squareup/okhttp/e$a;->d:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/squareup/okhttp/e$a;-><init>(Lcom/squareup/okhttp/e;ILcom/squareup/okhttp/v;Z)V

    .line 225
    .local v0, "chain":Lcom/squareup/okhttp/q$a;
    iget-object v1, p0, Lcom/squareup/okhttp/e$a;->a:Lcom/squareup/okhttp/e;

    invoke-static {v1}, Lcom/squareup/okhttp/e;->b(Lcom/squareup/okhttp/e;)Lcom/squareup/okhttp/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/t;->v()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/e$a;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp/q;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/q;->a(Lcom/squareup/okhttp/q$a;)Lcom/squareup/okhttp/x;

    move-result-object v1

    .line 228
    .end local v0    # "chain":Lcom/squareup/okhttp/q$a;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/e$a;->a:Lcom/squareup/okhttp/e;

    iget-boolean v2, p0, Lcom/squareup/okhttp/e$a;->d:Z

    invoke-virtual {v1, p1, v2}, Lcom/squareup/okhttp/e;->a(Lcom/squareup/okhttp/v;Z)Lcom/squareup/okhttp/x;

    move-result-object v1

    goto :goto_0
.end method

.method public b()Lcom/squareup/okhttp/v;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/squareup/okhttp/e$a;->c:Lcom/squareup/okhttp/v;

    return-object v0
.end method
