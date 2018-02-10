.class final enum Lorg/jsoup/b/c$24;
.super Lorg/jsoup/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 10
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 800
    invoke-virtual {p1}, Lorg/jsoup/b/h;->j()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 801
    invoke-virtual {p2}, Lorg/jsoup/b/b;->q()V

    .line 802
    invoke-virtual {p2}, Lorg/jsoup/b/b;->b()V

    .line 803
    sget-object v4, Lorg/jsoup/b/c$24;->InTableText:Lorg/jsoup/b/c;

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    .line 804
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v4

    .line 882
    :cond_0
    :goto_0
    return v4

    .line 805
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/b/h;->h()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 806
    invoke-virtual {p1}, Lorg/jsoup/b/h;->i()Lorg/jsoup/b/h$b;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$b;)V

    goto :goto_0

    .line 808
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/b/h;->b()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 809
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    move v4, v5

    .line 810
    goto :goto_0

    .line 811
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/b/h;->d()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 812
    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v3

    .line 813
    .local v3, "startTag":Lorg/jsoup/b/h$f;
    invoke-virtual {v3}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, "name":Ljava/lang/String;
    const-string v6, "caption"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 815
    invoke-virtual {p2}, Lorg/jsoup/b/b;->j()V

    .line 816
    invoke-virtual {p2}, Lorg/jsoup/b/b;->v()V

    .line 817
    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 818
    sget-object v5, Lorg/jsoup/b/c$24;->InCaption:Lorg/jsoup/b/c;

    invoke-virtual {p2, v5}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 819
    :cond_4
    const-string v6, "colgroup"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 820
    invoke-virtual {p2}, Lorg/jsoup/b/b;->j()V

    .line 821
    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 822
    sget-object v5, Lorg/jsoup/b/c$24;->InColumnGroup:Lorg/jsoup/b/c;

    invoke-virtual {p2, v5}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 823
    :cond_5
    const-string v6, "col"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 824
    new-instance v4, Lorg/jsoup/b/h$f;

    const-string v5, "colgroup"

    invoke-direct {v4, v5}, Lorg/jsoup/b/h$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 825
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v4

    goto :goto_0

    .line 826
    :cond_6
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "tbody"

    aput-object v7, v6, v5

    const-string v7, "tfoot"

    aput-object v7, v6, v4

    const-string v7, "thead"

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 827
    invoke-virtual {p2}, Lorg/jsoup/b/b;->j()V

    .line 828
    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 829
    sget-object v5, Lorg/jsoup/b/c$24;->InTableBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, v5}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 830
    :cond_7
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "td"

    aput-object v7, v6, v5

    const-string v7, "th"

    aput-object v7, v6, v4

    const-string v7, "tr"

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 831
    new-instance v4, Lorg/jsoup/b/h$f;

    const-string v5, "tbody"

    invoke-direct {v4, v5}, Lorg/jsoup/b/h$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 832
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v4

    goto/16 :goto_0

    .line 833
    :cond_8
    const-string v6, "table"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 834
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 835
    new-instance v5, Lorg/jsoup/b/h$e;

    const-string v6, "table"

    invoke-direct {v5, v6}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v2

    .line 836
    .local v2, "processed":Z
    if-eqz v2, :cond_0

    .line 837
    invoke-virtual {p2, p1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v4

    goto/16 :goto_0

    .line 838
    .end local v2    # "processed":Z
    :cond_9
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "style"

    aput-object v7, v6, v5

    const-string v7, "script"

    aput-object v7, v6, v4

    invoke-static {v1, v6}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 839
    sget-object v4, Lorg/jsoup/b/c$24;->InHead:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v4

    goto/16 :goto_0

    .line 840
    :cond_a
    const-string v6, "input"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 841
    iget-object v5, v3, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hidden"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 842
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/b/c$24;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v4

    goto/16 :goto_0

    .line 844
    :cond_b
    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto/16 :goto_0

    .line 846
    :cond_c
    const-string v6, "form"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 847
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 848
    invoke-virtual {p2}, Lorg/jsoup/b/b;->p()Lorg/jsoup/nodes/g;

    move-result-object v6

    if-eqz v6, :cond_d

    move v4, v5

    .line 849
    goto/16 :goto_0

    .line 851
    :cond_d
    invoke-virtual {p2, v3, v5}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;Z)Lorg/jsoup/nodes/g;

    goto/16 :goto_0

    .line 854
    :cond_e
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/b/c$24;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v4

    goto/16 :goto_0

    .line 857
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "startTag":Lorg/jsoup/b/h$f;
    :cond_f
    invoke-virtual {p1}, Lorg/jsoup/b/h;->f()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 858
    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v0

    .line 859
    .local v0, "endTag":Lorg/jsoup/b/h$e;
    invoke-virtual {v0}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v1

    .line 861
    .restart local v1    # "name":Ljava/lang/String;
    const-string v6, "table"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 862
    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->h(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 863
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    move v4, v5

    .line 864
    goto/16 :goto_0

    .line 866
    :cond_10
    const-string v5, "table"

    invoke-virtual {p2, v5}, Lorg/jsoup/b/b;->c(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p2}, Lorg/jsoup/b/b;->m()V

    goto/16 :goto_0

    .line 869
    :cond_11
    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "body"

    aput-object v7, v6, v5

    const-string v7, "caption"

    aput-object v7, v6, v4

    const-string v4, "col"

    aput-object v4, v6, v8

    const-string v4, "colgroup"

    aput-object v4, v6, v9

    const/4 v4, 0x4

    const-string v7, "html"

    aput-object v7, v6, v4

    const/4 v4, 0x5

    const-string v7, "tbody"

    aput-object v7, v6, v4

    const/4 v4, 0x6

    const-string v7, "td"

    aput-object v7, v6, v4

    const/4 v4, 0x7

    const-string v7, "tfoot"

    aput-object v7, v6, v4

    const/16 v4, 0x8

    const-string v7, "th"

    aput-object v7, v6, v4

    const/16 v4, 0x9

    const-string v7, "thead"

    aput-object v7, v6, v4

    const/16 v4, 0xa

    const-string v7, "tr"

    aput-object v7, v6, v4

    invoke-static {v1, v6}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 871
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    move v4, v5

    .line 872
    goto/16 :goto_0

    .line 874
    :cond_12
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/b/c$24;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v4

    goto/16 :goto_0

    .line 877
    .end local v0    # "endTag":Lorg/jsoup/b/h$e;
    .end local v1    # "name":Ljava/lang/String;
    :cond_13
    invoke-virtual {p1}, Lorg/jsoup/b/h;->l()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 878
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 879
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 882
    :cond_14
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/b/c$24;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 7
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 886
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 887
    const/4 v0, 0x1

    .line 888
    .local v0, "processed":Z
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "table"

    aput-object v3, v2, v5

    const-string v3, "tbody"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "tfoot"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "thead"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "tr"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    invoke-virtual {p2, v6}, Lorg/jsoup/b/b;->b(Z)V

    .line 890
    sget-object v1, Lorg/jsoup/b/c$24;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v0

    .line 891
    invoke-virtual {p2, v5}, Lorg/jsoup/b/b;->b(Z)V

    .line 895
    :goto_0
    return v0

    .line 893
    :cond_0
    sget-object v1, Lorg/jsoup/b/c$24;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v0

    goto :goto_0
.end method
