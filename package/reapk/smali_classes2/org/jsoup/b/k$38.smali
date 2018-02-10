.class final enum Lorg/jsoup/b/k$38;
.super Lorg/jsoup/b/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 934
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/k;-><init>(Ljava/lang/String;ILorg/jsoup/b/k$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V
    .locals 3
    .param p1, "t"    # Lorg/jsoup/b/j;
    .param p2, "r"    # Lorg/jsoup/b/a;

    .prologue
    .line 938
    invoke-virtual {p2}, Lorg/jsoup/b/a;->e()V

    .line 939
    new-instance v0, Lorg/jsoup/b/h$b;

    invoke-direct {v0}, Lorg/jsoup/b/h$b;-><init>()V

    .line 940
    .local v0, "comment":Lorg/jsoup/b/h$b;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jsoup/b/h$b;->c:Z

    .line 941
    iget-object v1, v0, Lorg/jsoup/b/h$b;->b:Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-virtual {p2, v2}, Lorg/jsoup/b/a;->b(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/h;)V

    .line 944
    sget-object v1, Lorg/jsoup/b/k$38;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    .line 945
    return-void
.end method
