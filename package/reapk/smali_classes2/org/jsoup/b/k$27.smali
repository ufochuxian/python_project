.class final enum Lorg/jsoup/b/k$27;
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
    .line 593
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/k;-><init>(Ljava/lang/String;ILorg/jsoup/b/k$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V
    .locals 2
    .param p1, "t"    # Lorg/jsoup/b/j;
    .param p2, "r"    # Lorg/jsoup/b/a;

    .prologue
    .line 595
    sget-object v0, Lorg/jsoup/b/k$27;->ScriptDataEscaped:Lorg/jsoup/b/k;

    sget-object v1, Lorg/jsoup/b/k$27;->ScriptDataDoubleEscaped:Lorg/jsoup/b/k;

    invoke-static {p1, p2, v0, v1}, Lorg/jsoup/b/k;->a(Lorg/jsoup/b/j;Lorg/jsoup/b/a;Lorg/jsoup/b/k;Lorg/jsoup/b/k;)V

    .line 596
    return-void
.end method
