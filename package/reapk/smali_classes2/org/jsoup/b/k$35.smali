.class final enum Lorg/jsoup/b/k$35;
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
    .line 837
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
    .line 839
    const/16 v3, 0xd

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    invoke-virtual {p2, v3}, Lorg/jsoup/b/a;->a([C)Ljava/lang/String;

    move-result-object v2

    .line 840
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 841
    iget-object v3, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v3, v2}, Lorg/jsoup/b/h$g;->d(Ljava/lang/String;)V

    .line 843
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 844
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 882
    :goto_0
    return-void

    .line 850
    :sswitch_0
    sget-object v3, Lorg/jsoup/b/k$35;->BeforeAttributeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v3}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 853
    :sswitch_1
    const/16 v3, 0x3e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lorg/jsoup/b/j;->a(Ljava/lang/Character;Z)[C

    move-result-object v1

    .line 854
    .local v1, "ref":[C
    if-eqz v1, :cond_1

    .line 855
    iget-object v3, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v3, v1}, Lorg/jsoup/b/h$g;->a([C)V

    goto :goto_0

    .line 857
    :cond_1
    iget-object v3, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Lorg/jsoup/b/h$g;->c(C)V

    goto :goto_0

    .line 860
    .end local v1    # "ref":[C
    :sswitch_2
    invoke-virtual {p1}, Lorg/jsoup/b/j;->d()V

    .line 861
    sget-object v3, Lorg/jsoup/b/k$35;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v3}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 864
    :sswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 865
    iget-object v3, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    const v4, 0xfffd

    invoke-virtual {v3, v4}, Lorg/jsoup/b/h$g;->c(C)V

    goto :goto_0

    .line 868
    :sswitch_4
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 869
    sget-object v3, Lorg/jsoup/b/k$35;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v3}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 876
    :sswitch_5
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 877
    iget-object v3, p1, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v3, v0}, Lorg/jsoup/b/h$g;->c(C)V

    goto :goto_0

    .line 839
    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x26s
        0x3es
        0x0s
        0x22s
        0x27s
        0x3cs
        0x3ds
        0x60s
    .end array-data

    .line 844
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_5
        0x26 -> :sswitch_1
        0x27 -> :sswitch_5
        0x3c -> :sswitch_5
        0x3d -> :sswitch_5
        0x3e -> :sswitch_2
        0x60 -> :sswitch_5
        0xffff -> :sswitch_4
    .end sparse-switch
.end method
