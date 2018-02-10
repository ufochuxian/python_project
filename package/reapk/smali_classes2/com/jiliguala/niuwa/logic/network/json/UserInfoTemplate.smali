.class public Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;,
        Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;,
        Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;,
        Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;,
        Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3c28304fb5025592L


# instance fields
.field public code:I

.field public data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadBabyInfo()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v6, "babyInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;>;"
    const-string v0, "USER_BABY_COUNT"

    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v7

    .line 136
    .local v7, "count":I
    if-eqz v7, :cond_0

    .line 137
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USER_BABY_ID"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    invoke-static {v0, v9}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "_id":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USER_BABY_NICK"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    invoke-static {v0, v9}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "nick":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USER_BABY_BIRTH_DAY"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    invoke-static {v0, v9}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "bd":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USER_BABY_PRT"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    invoke-static {v0, v9}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "prt":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USER_BABY_AVA"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    invoke-static {v0, v9}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "ava":Ljava/lang/String;
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 146
    .end local v1    # "_id":Ljava/lang/String;
    .end local v2    # "nick":Ljava/lang/String;
    .end local v3    # "bd":Ljava/lang/String;
    .end local v4    # "prt":Ljava/lang/String;
    .end local v5    # "ava":Ljava/lang/String;
    .end local v8    # "index":I
    :cond_0
    return-object v6
.end method

.method public static loadFromDb()Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    .locals 16

    .prologue
    .line 31
    new-instance v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-direct {v13}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;-><init>()V

    .line 32
    .local v13, "template":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    const/4 v1, 0x0

    iput v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->code:I

    .line 33
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;-><init>()V

    iput-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    .line 34
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a;->d()Lcom/jiliguala/niuwa/logic/db/daometa/g;

    move-result-object v14

    .line 35
    .local v14, "userInfo":Lcom/jiliguala/niuwa/logic/db/daometa/g;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    const/4 v13, 0x0

    .line 87
    .end local v13    # "template":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    :goto_0
    return-object v13

    .line 39
    .restart local v13    # "template":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    :cond_1
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    .line 40
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    .line 41
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->access_token:Ljava/lang/String;

    .line 42
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tok:Ljava/lang/String;

    .line 43
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->ava:Ljava/lang/String;

    .line 44
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    .line 45
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tts:Ljava/lang/String;

    .line 46
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->u:Ljava/lang/String;

    .line 47
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->i()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->isNew:Z

    .line 48
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegP:Ljava/lang/String;

    .line 49
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegType:Ljava/lang/String;

    .line 50
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->l()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->city:Ljava/lang/String;

    .line 51
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->desc:Ljava/lang/String;

    .line 52
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->n()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bg:Ljava/lang/String;

    .line 53
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->q()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->guaid:Ljava/lang/String;

    .line 54
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->r()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->mobile:Ljava/lang/String;

    .line 55
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/x;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tag:Ljava/util/ArrayList;

    .line 56
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;-><init>()V

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    .line 57
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->s()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->thread:J

    .line 58
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->t()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->reply:J

    .line 59
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->u()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->sel:J

    .line 60
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->v()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->fav:J

    .line 61
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->w()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->done:Z

    .line 62
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->p()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->grptask:Z

    .line 63
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->x()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->cts:Ljava/lang/String;

    .line 64
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;-><init>()V

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    .line 65
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->y()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;->status:Ljava/lang/String;

    .line 66
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->z()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;->duets:Ljava/lang/String;

    .line 67
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v1

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/db/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 70
    .local v7, "babies":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/a;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v8, "babyInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jiliguala/niuwa/logic/db/daometa/a;

    .line 72
    .local v12, "info":Lcom/jiliguala/niuwa/logic/db/daometa/a;
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v0, "baby":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    .end local v0    # "baby":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    .end local v12    # "info":Lcom/jiliguala/niuwa/logic/db/daometa/a;
    :cond_2
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iput-object v8, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    .line 77
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v1

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/db/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 78
    .local v9, "classes":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/d;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v11, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jiliguala/niuwa/logic/db/daometa/d;

    .line 80
    .local v12, "info":Lcom/jiliguala/niuwa/logic/db/daometa/d;
    new-instance v10, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    invoke-direct {v10}, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;-><init>()V

    .line 81
    .local v10, "gClass":Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;
    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/db/daometa/d;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->_id:Ljava/lang/String;

    .line 82
    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/db/daometa/d;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->title:Ljava/lang/String;

    .line 83
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 85
    .end local v10    # "gClass":Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;
    .end local v12    # "info":Lcom/jiliguala/niuwa/logic/db/daometa/d;
    :cond_3
    iget-object v1, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iput-object v11, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public static loadLocal()Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 91
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;-><init>()V

    .line 92
    .local v0, "userInfo":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    iput v6, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->code:I

    .line 93
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;-><init>()V

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    .line 94
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->loadBabyInfo()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    .line 95
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_ID"

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    .line 96
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 118
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_NICK"

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    .line 100
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_ACCESS_TOKEN"

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->access_token:Ljava/lang/String;

    .line 101
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_TOKEN"

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tok:Ljava/lang/String;

    .line 102
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_AVA"

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->ava:Ljava/lang/String;

    .line 103
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_TYP"

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    .line 104
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_TTS"

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tts:Ljava/lang/String;

    .line 105
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_U"

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->u:Ljava/lang/String;

    .line 106
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_NEW"

    invoke-static {v3, v6}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->isNew:Z

    .line 107
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_P"

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegP:Ljava/lang/String;

    .line 108
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_TYPE"

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegType:Ljava/lang/String;

    .line 109
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_CITY"

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->city:Ljava/lang/String;

    .line 110
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_DESC"

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->desc:Ljava/lang/String;

    .line 111
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v3, "USER_BG"

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bg:Ljava/lang/String;

    .line 112
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;-><init>()V

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    .line 113
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    const-string v2, "USER_FORUM_THREAD"

    invoke-static {v2, v4, v5}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->thread:J

    .line 114
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    const-string v2, "USER_FORUM_REPLY"

    invoke-static {v2, v4, v5}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->reply:J

    .line 115
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    const-string v2, "USER_FORUM_SEL"

    invoke-static {v2, v4, v5}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->sel:J

    .line 116
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    const-string v2, "USER_FORUM_FAV"

    invoke-static {v2, v4, v5}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->fav:J

    .line 117
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->loadUserTags()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tag:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public static loadUserTags()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v3, "userTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "USER_TAG_COUNT"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 125
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER_TAG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "index":I
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public logout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    const-string v2, "USER_ID"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 166
    const-string v2, "USER_NICK"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 167
    const-string v2, "USER_ACCESS_TOKEN"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 168
    const-string v2, "USER_TOKEN"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 169
    const-string v2, "USER_AVA"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 170
    const-string v2, "USER_TYP"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 171
    const-string v2, "USER_TTS"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 172
    const-string v2, "USER_U"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 173
    const-string v2, "USER_NEW"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 174
    const-string v2, "USER_P"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 175
    const-string v2, "USER_TYPE"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 176
    const-string v2, "USER_CITY"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 177
    const-string v2, "USER_DESC"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 178
    const-string v2, "USER_BG"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 179
    const-string v2, "USER_FORUM_THREAD"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 180
    const-string v2, "USER_FORUM_REPLY"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 181
    const-string v2, "USER_FORUM_SEL"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 182
    const-string v2, "USER_FORUM_FAV"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 184
    const-string v2, "USER_BABY_COUNT"

    invoke-static {v2, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 186
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER_BABY_ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER_BABY_NICK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER_BABY_BIRTH_DAY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER_BABY_PRT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER_BABY_AVA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "index":I
    :cond_0
    const-string v2, "USER_BABY_COUNT"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 195
    const-string v2, "CUR_CHOSEN_BABY_INDEX"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 197
    const-string v2, "USER_TAG_COUNT"

    invoke-static {v2, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v0

    .line 198
    if-eqz v0, :cond_1

    .line 199
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER_TAG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    .end local v1    # "index":I
    :cond_1
    const-string v2, "USER_TAG_COUNT"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public serialize()V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/db/a;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 162
    return-void
.end method

.method public storeBabyInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "babyInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;>;"
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfoTemplate{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
