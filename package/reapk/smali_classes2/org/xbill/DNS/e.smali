.class public Lorg/xbill/DNS/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/e$1;,
        Lorg/xbill/DNS/e$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x11

.field private static final b:I = 0x3fff


# instance fields
.field private c:[Lorg/xbill/DNS/e$a;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "verbosecompression"

    invoke-static {v0}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/xbill/DNS/e;->d:Z

    .line 31
    const/16 v0, 0x11

    new-array v0, v0, [Lorg/xbill/DNS/e$a;

    iput-object v0, p0, Lorg/xbill/DNS/e;->c:[Lorg/xbill/DNS/e$a;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lorg/xbill/DNS/Name;)I
    .locals 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 61
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->hashCode()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    rem-int/lit8 v2, v3, 0x11

    .line 62
    .local v2, "row":I
    const/4 v1, -0x1

    .line 63
    .local v1, "pos":I
    iget-object v3, p0, Lorg/xbill/DNS/e;->c:[Lorg/xbill/DNS/e$a;

    aget-object v0, v3, v2

    .local v0, "entry":Lorg/xbill/DNS/e$a;
    :goto_0
    if-eqz v0, :cond_1

    .line 64
    iget-object v3, v0, Lorg/xbill/DNS/e$a;->a:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    iget v1, v0, Lorg/xbill/DNS/e$a;->b:I

    .line 63
    :cond_0
    iget-object v0, v0, Lorg/xbill/DNS/e$a;->c:Lorg/xbill/DNS/e$a;

    goto :goto_0

    .line 67
    :cond_1
    iget-boolean v3, p0, Lorg/xbill/DNS/e;->d:Z

    if-eqz v3, :cond_2

    .line 68
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Looking for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    :cond_2
    return v1
.end method

.method public a(ILorg/xbill/DNS/Name;)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 41
    const/16 v2, 0x3fff

    if-le p1, v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/lit8 v1, v2, 0x11

    .line 44
    .local v1, "row":I
    new-instance v0, Lorg/xbill/DNS/e$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/xbill/DNS/e$a;-><init>(Lorg/xbill/DNS/e$1;)V

    .line 45
    .local v0, "entry":Lorg/xbill/DNS/e$a;
    iput-object p2, v0, Lorg/xbill/DNS/e$a;->a:Lorg/xbill/DNS/Name;

    .line 46
    iput p1, v0, Lorg/xbill/DNS/e$a;->b:I

    .line 47
    iget-object v2, p0, Lorg/xbill/DNS/e;->c:[Lorg/xbill/DNS/e$a;

    aget-object v2, v2, v1

    iput-object v2, v0, Lorg/xbill/DNS/e$a;->c:Lorg/xbill/DNS/e$a;

    .line 48
    iget-object v2, p0, Lorg/xbill/DNS/e;->c:[Lorg/xbill/DNS/e$a;

    aput-object v0, v2, v1

    .line 49
    iget-boolean v2, p0, Lorg/xbill/DNS/e;->d:Z

    if-eqz v2, :cond_0

    .line 50
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
