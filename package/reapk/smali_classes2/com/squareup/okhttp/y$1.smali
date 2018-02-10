.class final Lcom/squareup/okhttp/y$1;
.super Lcom/squareup/okhttp/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/y;->a(Lcom/squareup/okhttp/r;JLokio/e;)Lcom/squareup/okhttp/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/r;

.field final synthetic b:J

.field final synthetic c:Lokio/e;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/r;JLokio/e;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/squareup/okhttp/y$1;->a:Lcom/squareup/okhttp/r;

    iput-wide p2, p0, Lcom/squareup/okhttp/y$1;->b:J

    iput-object p4, p0, Lcom/squareup/okhttp/y$1;->c:Lokio/e;

    invoke-direct {p0}, Lcom/squareup/okhttp/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/r;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/squareup/okhttp/y$1;->a:Lcom/squareup/okhttp/r;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/squareup/okhttp/y$1;->b:J

    return-wide v0
.end method

.method public c()Lokio/e;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/squareup/okhttp/y$1;->c:Lokio/e;

    return-object v0
.end method
