.class public Lorg/jsoup/helper/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/Connection$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p1, p0, Lorg/jsoup/helper/b$b;->a:Ljava/lang/String;

    .line 678
    iput-object p2, p0, Lorg/jsoup/helper/b$b;->b:Ljava/lang/String;

    .line 679
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/b$b;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 671
    const-string v0, "Data key must not be empty"

    invoke-static {p0, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v0, "Data value must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    new-instance v0, Lorg/jsoup/helper/b$b;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/helper/b$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lorg/jsoup/helper/b$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic a(Ljava/lang/String;)Lorg/jsoup/Connection$b;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 666
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/b$b;->c(Ljava/lang/String;)Lorg/jsoup/helper/b$b;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lorg/jsoup/helper/b$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)Lorg/jsoup/Connection$b;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 666
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/b$b;->d(Ljava/lang/String;)Lorg/jsoup/helper/b$b;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lorg/jsoup/helper/b$b;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 682
    const-string v0, "Data key must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iput-object p1, p0, Lorg/jsoup/helper/b$b;->a:Ljava/lang/String;

    .line 684
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lorg/jsoup/helper/b$b;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 692
    const-string v0, "Data value must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    iput-object p1, p0, Lorg/jsoup/helper/b$b;->b:Ljava/lang/String;

    .line 694
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jsoup/helper/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/helper/b$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
