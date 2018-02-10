.class Lorg/jsoup/b/h$a;
.super Lorg/jsoup/b/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/b/h;-><init>(Lorg/jsoup/b/h$1;)V

    .line 203
    sget-object v0, Lorg/jsoup/b/h$h;->Character:Lorg/jsoup/b/h$h;

    iput-object v0, p0, Lorg/jsoup/b/h$a;->a:Lorg/jsoup/b/h$h;

    .line 204
    iput-object p1, p0, Lorg/jsoup/b/h$a;->b:Ljava/lang/String;

    .line 205
    return-void
.end method


# virtual methods
.method m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/jsoup/b/h$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/jsoup/b/h$a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
