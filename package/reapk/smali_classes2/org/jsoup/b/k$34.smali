.class final enum Lorg/jsoup/b/k$34;
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
    .line 67
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
    .line 69
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/jsoup/b/j;->a(Ljava/lang/Character;Z)[C

    move-result-object v0

    .line 70
    .local v0, "c":[C
    if-nez v0, :cond_0

    .line 71
    const/16 v1, 0x26

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(C)V

    .line 74
    :goto_0
    sget-object v1, Lorg/jsoup/b/k$34;->Rcdata:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 75
    return-void

    .line 73
    :cond_0
    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a([C)V

    goto :goto_0
.end method
