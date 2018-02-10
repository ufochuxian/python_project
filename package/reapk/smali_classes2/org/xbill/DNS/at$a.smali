.class public Lorg/xbill/DNS/at$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/at$a;->a:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    .line 78
    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/at$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/xbill/DNS/at$1;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/xbill/DNS/at$a;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/at$a;
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/StringBuffer;

    .prologue
    .line 82
    if-gez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 84
    :cond_0
    iput p1, p0, Lorg/xbill/DNS/at$a;->a:I

    .line 85
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    .line 86
    return-object p0

    .line 85
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lorg/xbill/DNS/at$a;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/at$a;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/at$a;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/StringBuffer;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/at$a;->a(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/at$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lorg/xbill/DNS/at$a;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/xbill/DNS/at$a;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 122
    iget v1, p0, Lorg/xbill/DNS/at$a;->a:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lorg/xbill/DNS/at$a;->a:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lorg/xbill/DNS/at$a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 109
    const-string v0, "<unknown>"

    :goto_0
    return-object v0

    .line 97
    :pswitch_0
    const-string v0, "<eof>"

    goto :goto_0

    .line 99
    :pswitch_1
    const-string v0, "<eol>"

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v0, "<whitespace>"

    goto :goto_0

    .line 103
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<quoted_string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<comment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
