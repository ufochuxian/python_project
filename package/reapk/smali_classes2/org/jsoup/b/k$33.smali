.class final enum Lorg/jsoup/b/k$33;
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
    .line 807
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/k;-><init>(Ljava/lang/String;ILorg/jsoup/b/k$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V
    .locals 5
    .param p1, "t"    # Lorg/jsoup/b/j;
    .param p2, "r"    # Lorg/jsoup/b/a;

    .prologue
    .line 809
    const/4 v3, 0x3

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    invoke-virtual {p2, v3}, Lorg/jsoup/b/a;->a([C)Ljava/lang/String;

    move-result-object v2

    .line 810
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 811
    iget-object v3, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v3, v2}, Lorg/jsoup/b/h$g;->d(Ljava/lang/String;)V

    .line 813
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 814
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 835
    :goto_0
    return-void

    .line 816
    :sswitch_0
    sget-object v3, Lorg/jsoup/b/k$33;->AfterAttributeValue_quoted:Lorg/jsoup/b/k;

    invoke-virtual {p1, v3}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 819
    :sswitch_1
    const/16 v3, 0x27

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lorg/jsoup/b/j;->a(Ljava/lang/Character;Z)[C

    move-result-object v1

    .line 820
    .local v1, "ref":[C
    if-eqz v1, :cond_1

    .line 821
    iget-object v3, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v3, v1}, Lorg/jsoup/b/h$g;->a([C)V

    goto :goto_0

    .line 823
    :cond_1
    iget-object v3, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Lorg/jsoup/b/h$g;->c(C)V

    goto :goto_0

    .line 826
    .end local v1    # "ref":[C
    :sswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 827
    iget-object v3, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    const v4, 0xfffd

    invoke-virtual {v3, v4}, Lorg/jsoup/b/h$g;->c(C)V

    goto :goto_0

    .line 830
    :sswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 831
    sget-object v3, Lorg/jsoup/b/k$33;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v3}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 809
    nop

    :array_0
    .array-data 2
        0x27s
        0x26s
        0x0s
    .end array-data

    .line 814
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x26 -> :sswitch_1
        0x27 -> :sswitch_0
        0xffff -> :sswitch_3
    .end sparse-switch
.end method
