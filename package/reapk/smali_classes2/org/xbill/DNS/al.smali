.class public Lorg/xbill/DNS/al;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3

.field static final e:I = 0x4

.field static final f:I = 0x5

.field static final g:I = 0x6

.field private static final h:Lorg/xbill/DNS/al;

.field private static final i:Lorg/xbill/DNS/al;

.field private static final j:Lorg/xbill/DNS/al;


# instance fields
.field private k:I

.field private l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lorg/xbill/DNS/al;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xbill/DNS/al;-><init>(I)V

    sput-object v0, Lorg/xbill/DNS/al;->h:Lorg/xbill/DNS/al;

    .line 59
    new-instance v0, Lorg/xbill/DNS/al;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/al;-><init>(I)V

    sput-object v0, Lorg/xbill/DNS/al;->i:Lorg/xbill/DNS/al;

    .line 60
    new-instance v0, Lorg/xbill/DNS/al;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/xbill/DNS/al;-><init>(I)V

    sput-object v0, Lorg/xbill/DNS/al;->j:Lorg/xbill/DNS/al;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    iput p1, p0, Lorg/xbill/DNS/al;->k:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/al;->l:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method constructor <init>(ILorg/xbill/DNS/RRset;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "rrset"    # Lorg/xbill/DNS/RRset;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    iput p1, p0, Lorg/xbill/DNS/al;->k:I

    .line 72
    iput-object p2, p0, Lorg/xbill/DNS/al;->l:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method static a(I)Lorg/xbill/DNS/al;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 84
    packed-switch p0, :pswitch_data_0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :pswitch_0
    sget-object v0, Lorg/xbill/DNS/al;->h:Lorg/xbill/DNS/al;

    .line 98
    :goto_0
    return-object v0

    .line 88
    :pswitch_1
    sget-object v0, Lorg/xbill/DNS/al;->i:Lorg/xbill/DNS/al;

    goto :goto_0

    .line 90
    :pswitch_2
    sget-object v0, Lorg/xbill/DNS/al;->j:Lorg/xbill/DNS/al;

    goto :goto_0

    .line 95
    :pswitch_3
    new-instance v0, Lorg/xbill/DNS/al;

    invoke-direct {v0}, Lorg/xbill/DNS/al;-><init>()V

    .line 96
    .local v0, "sr":Lorg/xbill/DNS/al;
    iput p0, v0, Lorg/xbill/DNS/al;->k:I

    .line 97
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/xbill/DNS/al;->l:Ljava/lang/Object;

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method a(Lorg/xbill/DNS/RRset;)V
    .locals 2
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .prologue
    .line 106
    iget-object v1, p0, Lorg/xbill/DNS/al;->l:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xbill/DNS/al;->l:Ljava/lang/Object;

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/al;->l:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 109
    .local v0, "l":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/xbill/DNS/al;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 121
    iget v1, p0, Lorg/xbill/DNS/al;->k:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lorg/xbill/DNS/al;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lorg/xbill/DNS/al;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lorg/xbill/DNS/al;->k:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lorg/xbill/DNS/al;->k:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lorg/xbill/DNS/al;->k:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()[Lorg/xbill/DNS/RRset;
    .locals 3

    .prologue
    .line 157
    iget v1, p0, Lorg/xbill/DNS/al;->k:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 158
    const/4 v1, 0x0

    .line 160
    :goto_0
    return-object v1

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/al;->l:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 160
    .local v0, "l":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/RRset;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/xbill/DNS/RRset;

    check-cast v1, [Lorg/xbill/DNS/RRset;

    goto :goto_0
.end method

.method public i()Lorg/xbill/DNS/CNAMERecord;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/xbill/DNS/al;->l:Ljava/lang/Object;

    check-cast v0, Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/CNAMERecord;

    return-object v0
.end method

.method public j()Lorg/xbill/DNS/DNAMERecord;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/xbill/DNS/al;->l:Ljava/lang/Object;

    check-cast v0, Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/DNAMERecord;

    return-object v0
.end method

.method public k()Lorg/xbill/DNS/RRset;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/xbill/DNS/al;->l:Ljava/lang/Object;

    check-cast v0, Lorg/xbill/DNS/RRset;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lorg/xbill/DNS/al;->k:I

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 191
    :pswitch_0
    const-string v0, "unknown"

    .line 197
    :goto_0
    return-object v0

    .line 192
    :pswitch_1
    const-string v0, "NXDOMAIN"

    goto :goto_0

    .line 193
    :pswitch_2
    const-string v0, "NXRRSET"

    goto :goto_0

    .line 194
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "delegation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/al;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CNAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/al;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "DNAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/al;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_6
    const-string v0, "successful"

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
