.class Lcom/github/sahasbhop/a/a/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/sahasbhop/a/a/b;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/InputStream;

.field final synthetic c:Lcom/github/sahasbhop/a/a/b;


# direct methods
.method constructor <init>(Lcom/github/sahasbhop/a/a/b;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/sahasbhop/a/a/b;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/github/sahasbhop/a/a/b$3;->c:Lcom/github/sahasbhop/a/a/b;

    iput-object p2, p0, Lcom/github/sahasbhop/a/a/b$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/github/sahasbhop/a/a/b$3;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/github/sahasbhop/a/a/b$3;->c:Lcom/github/sahasbhop/a/a/b;

    iget-object v1, p0, Lcom/github/sahasbhop/a/a/b$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/github/sahasbhop/a/a/b$3;->b:Ljava/io/InputStream;

    invoke-static {v0, v1, v2}, Lcom/github/sahasbhop/a/a/b;->a(Lcom/github/sahasbhop/a/a/b;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/github/sahasbhop/a/a/b$3;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
