.class Lu/aly/bq$a;
.super Lu/aly/cm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cm",
        "<",
        "Lu/aly/bq;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0}, Lu/aly/cm;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bq$1;)V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0}, Lu/aly/bq$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cc;Lu/aly/bq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 722
    invoke-virtual {p1}, Lu/aly/cc;->j()Lu/aly/ch;

    .line 724
    :goto_0
    invoke-virtual {p1}, Lu/aly/cc;->l()Lu/aly/bw;

    move-result-object v0

    .line 725
    iget-byte v1, v0, Lu/aly/bw;->b:B

    if-nez v1, :cond_0

    .line 814
    invoke-virtual {p1}, Lu/aly/cc;->k()V

    .line 818
    invoke-virtual {p2}, Lu/aly/bq;->n()Z

    move-result v0

    if-nez v0, :cond_b

    .line 819
    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 820
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_0
    iget-short v1, v0, Lu/aly/bw;->c:S

    packed-switch v1, :pswitch_data_0

    .line 810
    iget-byte v0, v0, Lu/aly/bw;->b:B

    invoke-static {p1, v0}, Lu/aly/cd;->a(Lu/aly/cc;B)V

    .line 812
    :goto_1
    invoke-virtual {p1}, Lu/aly/cc;->m()V

    goto :goto_0

    .line 730
    :pswitch_0
    iget-byte v1, v0, Lu/aly/bw;->b:B

    if-ne v1, v3, :cond_1

    .line 731
    invoke-virtual {p1}, Lu/aly/cc;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->a:Ljava/lang/String;

    .line 732
    invoke-virtual {p2, v2}, Lu/aly/bq;->a(Z)V

    goto :goto_1

    .line 734
    :cond_1
    iget-byte v0, v0, Lu/aly/bw;->b:B

    invoke-static {p1, v0}, Lu/aly/cd;->a(Lu/aly/cc;B)V

    goto :goto_1

    .line 738
    :pswitch_1
    iget-byte v1, v0, Lu/aly/bw;->b:B

    if-ne v1, v3, :cond_2

    .line 739
    invoke-virtual {p1}, Lu/aly/cc;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->b:Ljava/lang/String;

    .line 740
    invoke-virtual {p2, v2}, Lu/aly/bq;->b(Z)V

    goto :goto_1

    .line 742
    :cond_2
    iget-byte v0, v0, Lu/aly/bw;->b:B

    invoke-static {p1, v0}, Lu/aly/cd;->a(Lu/aly/cc;B)V

    goto :goto_1

    .line 746
    :pswitch_2
    iget-byte v1, v0, Lu/aly/bw;->b:B

    if-ne v1, v3, :cond_3

    .line 747
    invoke-virtual {p1}, Lu/aly/cc;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->c:Ljava/lang/String;

    .line 748
    invoke-virtual {p2, v2}, Lu/aly/bq;->c(Z)V

    goto :goto_1

    .line 750
    :cond_3
    iget-byte v0, v0, Lu/aly/bw;->b:B

    invoke-static {p1, v0}, Lu/aly/cd;->a(Lu/aly/cc;B)V

    goto :goto_1

    .line 754
    :pswitch_3
    iget-byte v1, v0, Lu/aly/bw;->b:B

    if-ne v1, v4, :cond_4

    .line 755
    invoke-virtual {p1}, Lu/aly/cc;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bq;->d:I

    .line 756
    invoke-virtual {p2, v2}, Lu/aly/bq;->d(Z)V

    goto :goto_1

    .line 758
    :cond_4
    iget-byte v0, v0, Lu/aly/bw;->b:B

    invoke-static {p1, v0}, Lu/aly/cd;->a(Lu/aly/cc;B)V

    goto :goto_1

    .line 762
    :pswitch_4
    iget-byte v1, v0, Lu/aly/bw;->b:B

    if-ne v1, v4, :cond_5

    .line 763
    invoke-virtual {p1}, Lu/aly/cc;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bq;->e:I

    .line 764
    invoke-virtual {p2, v2}, Lu/aly/bq;->e(Z)V

    goto :goto_1

    .line 766
    :cond_5
    iget-byte v0, v0, Lu/aly/bw;->b:B

    invoke-static {p1, v0}, Lu/aly/cd;->a(Lu/aly/cc;B)V

    goto :goto_1

    .line 770
    :pswitch_5
    iget-byte v1, v0, Lu/aly/bw;->b:B

    if-ne v1, v4, :cond_6

    .line 771
    invoke-virtual {p1}, Lu/aly/cc;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bq;->f:I

    .line 772
    invoke-virtual {p2, v2}, Lu/aly/bq;->f(Z)V

    goto :goto_1

    .line 774
    :cond_6
    iget-byte v0, v0, Lu/aly/bw;->b:B

    invoke-static {p1, v0}, Lu/aly/cd;->a(Lu/aly/cc;B)V

    goto :goto_1

    .line 778
    :pswitch_6
    iget-byte v1, v0, Lu/aly/bw;->b:B

    if-ne v1, v3, :cond_7

    .line 779
    invoke-virtual {p1}, Lu/aly/cc;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    .line 780
    invoke-virtual {p2, v2}, Lu/aly/bq;->g(Z)V

    goto/16 :goto_1

    .line 782
    :cond_7
    iget-byte v0, v0, Lu/aly/bw;->b:B

    invoke-static {p1, v0}, Lu/aly/cd;->a(Lu/aly/cc;B)V

    goto/16 :goto_1

    .line 786
    :pswitch_7
    iget-byte v1, v0, Lu/aly/bw;->b:B

    if-ne v1, v3, :cond_8

    .line 787
    invoke-virtual {p1}, Lu/aly/cc;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->h:Ljava/lang/String;

    .line 788
    invoke-virtual {p2, v2}, Lu/aly/bq;->h(Z)V

    goto/16 :goto_1

    .line 790
    :cond_8
    iget-byte v0, v0, Lu/aly/bw;->b:B

    invoke-static {p1, v0}, Lu/aly/cd;->a(Lu/aly/cc;B)V

    goto/16 :goto_1

    .line 794
    :pswitch_8
    iget-byte v1, v0, Lu/aly/bw;->b:B

    if-ne v1, v3, :cond_9

    .line 795
    invoke-virtual {p1}, Lu/aly/cc;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->i:Ljava/lang/String;

    .line 796
    invoke-virtual {p2, v2}, Lu/aly/bq;->i(Z)V

    goto/16 :goto_1

    .line 798
    :cond_9
    iget-byte v0, v0, Lu/aly/bw;->b:B

    invoke-static {p1, v0}, Lu/aly/cd;->a(Lu/aly/cc;B)V

    goto/16 :goto_1

    .line 802
    :pswitch_9
    iget-byte v1, v0, Lu/aly/bw;->b:B

    if-ne v1, v4, :cond_a

    .line 803
    invoke-virtual {p1}, Lu/aly/cc;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bq;->j:I

    .line 804
    invoke-virtual {p2, v2}, Lu/aly/bq;->j(Z)V

    goto/16 :goto_1

    .line 806
    :cond_a
    iget-byte v0, v0, Lu/aly/bw;->b:B

    invoke-static {p1, v0}, Lu/aly/cd;->a(Lu/aly/cc;B)V

    goto/16 :goto_1

    .line 822
    :cond_b
    invoke-virtual {p2}, Lu/aly/bq;->r()Z

    move-result v0

    if-nez v0, :cond_c

    .line 823
    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 824
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_c
    invoke-virtual {p2}, Lu/aly/bq;->u()Z

    move-result v0

    if-nez v0, :cond_d

    .line 827
    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 828
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_d
    invoke-virtual {p2}, Lu/aly/bq;->I()V

    .line 831
    return-void

    .line 728
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public synthetic a(Lu/aly/cc;Lu/aly/cf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 717
    check-cast p2, Lu/aly/bq;

    invoke-virtual {p0, p1, p2}, Lu/aly/bq$a;->b(Lu/aly/cc;Lu/aly/bq;)V

    return-void
.end method

.method public b(Lu/aly/cc;Lu/aly/bq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 835
    invoke-virtual {p2}, Lu/aly/bq;->I()V

    .line 837
    invoke-static {}, Lu/aly/bq;->J()Lu/aly/ch;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Lu/aly/ch;)V

    .line 838
    iget-object v0, p2, Lu/aly/bq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 839
    invoke-static {}, Lu/aly/bq;->K()Lu/aly/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Lu/aly/bw;)V

    .line 840
    iget-object v0, p2, Lu/aly/bq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p1}, Lu/aly/cc;->c()V

    .line 843
    :cond_0
    iget-object v0, p2, Lu/aly/bq;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 844
    invoke-static {}, Lu/aly/bq;->L()Lu/aly/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Lu/aly/bw;)V

    .line 845
    iget-object v0, p2, Lu/aly/bq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p1}, Lu/aly/cc;->c()V

    .line 848
    :cond_1
    iget-object v0, p2, Lu/aly/bq;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 849
    invoke-static {}, Lu/aly/bq;->M()Lu/aly/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Lu/aly/bw;)V

    .line 850
    iget-object v0, p2, Lu/aly/bq;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p1}, Lu/aly/cc;->c()V

    .line 853
    :cond_2
    invoke-static {}, Lu/aly/bq;->N()Lu/aly/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Lu/aly/bw;)V

    .line 854
    iget v0, p2, Lu/aly/bq;->d:I

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(I)V

    .line 855
    invoke-virtual {p1}, Lu/aly/cc;->c()V

    .line 856
    invoke-static {}, Lu/aly/bq;->O()Lu/aly/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Lu/aly/bw;)V

    .line 857
    iget v0, p2, Lu/aly/bq;->e:I

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(I)V

    .line 858
    invoke-virtual {p1}, Lu/aly/cc;->c()V

    .line 859
    invoke-static {}, Lu/aly/bq;->P()Lu/aly/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Lu/aly/bw;)V

    .line 860
    iget v0, p2, Lu/aly/bq;->f:I

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(I)V

    .line 861
    invoke-virtual {p1}, Lu/aly/cc;->c()V

    .line 862
    iget-object v0, p2, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 863
    invoke-static {}, Lu/aly/bq;->Q()Lu/aly/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Lu/aly/bw;)V

    .line 864
    iget-object v0, p2, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Ljava/nio/ByteBuffer;)V

    .line 865
    invoke-virtual {p1}, Lu/aly/cc;->c()V

    .line 867
    :cond_3
    iget-object v0, p2, Lu/aly/bq;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 868
    invoke-static {}, Lu/aly/bq;->R()Lu/aly/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Lu/aly/bw;)V

    .line 869
    iget-object v0, p2, Lu/aly/bq;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p1}, Lu/aly/cc;->c()V

    .line 872
    :cond_4
    iget-object v0, p2, Lu/aly/bq;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 873
    invoke-static {}, Lu/aly/bq;->S()Lu/aly/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Lu/aly/bw;)V

    .line 874
    iget-object v0, p2, Lu/aly/bq;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p1}, Lu/aly/cc;->c()V

    .line 877
    :cond_5
    invoke-virtual {p2}, Lu/aly/bq;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 878
    invoke-static {}, Lu/aly/bq;->T()Lu/aly/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Lu/aly/bw;)V

    .line 879
    iget v0, p2, Lu/aly/bq;->j:I

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(I)V

    .line 880
    invoke-virtual {p1}, Lu/aly/cc;->c()V

    .line 882
    :cond_6
    invoke-virtual {p1}, Lu/aly/cc;->d()V

    .line 883
    invoke-virtual {p1}, Lu/aly/cc;->b()V

    .line 884
    return-void
.end method

.method public synthetic b(Lu/aly/cc;Lu/aly/cf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 717
    check-cast p2, Lu/aly/bq;

    invoke-virtual {p0, p1, p2}, Lu/aly/bq$a;->a(Lu/aly/cc;Lu/aly/bq;)V

    return-void
.end method
