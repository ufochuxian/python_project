.class Lorg/jsoup/c/b$a;
.super Lorg/jsoup/c/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lorg/jsoup/c/b$e;-><init>(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method static a(Ljava/lang/String;)Lorg/jsoup/c/b$a;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 406
    new-instance v0, Lorg/jsoup/c/b$a;

    invoke-direct {v0, p0}, Lorg/jsoup/c/b$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
