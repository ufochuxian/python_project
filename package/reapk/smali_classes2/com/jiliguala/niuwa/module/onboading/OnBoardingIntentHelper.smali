.class public Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CDKEY_EXCHANGE:Ljava/lang/String; = "CDKEY EXCHANGE"

.field public static final CLOCKING_RECORD:Ljava/lang/String; = "CLOCKING_RECORD"

.field public static final FORUM_POST_APPLOUD:Ljava/lang/String; = "FORUM_POST_APPLOUD"

.field public static final GUA_COIN_ENTER:Ljava/lang/String; = "GUA_COIN_ENTER"

.field public static final JOIN_CREATE_CLASS:Ljava/lang/String; = "JOIN_CREATE_CLASS"

.field public static final KEY_AVATAR:Ljava/lang/String; = "KEY_AVATAR"

.field public static final KEY_BIRTHDAY:Ljava/lang/String; = "KEY_BIRTHDAY"

.field public static final KEY_GENDER:Ljava/lang/String; = "KEY_GENDER"

.field public static final KEY_ID:Ljava/lang/String; = "KEY_ID"

.field public static final KEY_NICK:Ljava/lang/String; = "KEY_NICK"

.field public static final KEY_TYPE:Ljava/lang/String; = "KEY_TYPE"

.field public static final ONBOARDING:Ljava/lang/String; = "ONBOARDING"

.field public static final PURCHASE_GET_CHARGE:Ljava/lang/String; = "PURCHASE_GET_CHARGE"

.field public static final PURCHASE_ONE_V_ONE_COURSE:Ljava/lang/String; = "PURCHASE_ONE_V_ONE_COURSE"

.field public static final REGISTER_ADD_PERSONL_INFO:Ljava/lang/String; = "REGISTER_ADD_PERSONL_INFO"

.field public static final SEND_REPLY_FORUM_POST:Ljava/lang/String; = "SEND_REPLY_FORUM_POST"

.field public static final TYPE_BABY_EDIT:I = 0x1004

.field public static final TYPE_GUEST_BABY_ADD:I = 0x1005


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeIntentForBabyEdit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "nickName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "birthday"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p4, "avatar"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p5, "gender"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_TYPE"

    const/16 v2, 0x1004

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    const-string v1, "KEY_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, "KEY_NICK"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "KEY_BIRTHDAY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "KEY_AVATAR"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "KEY_GENDER"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    return-object v0
.end method

.method public static makeIntentForGuaCoinInfoCompletion(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "flag"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ONBOARDING_TYPE"

    const/16 v3, 0x5002

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v2, "PHONE_SUB_TYPE"

    const/16 v3, 0x5006

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 139
    const-string v2, "STEP_HINT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    :cond_0
    const-string v2, "DEFAULT_FLAG"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 143
    return-object v1
.end method

.method public static makeIntentForPhoneInfoCompletion(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ONBOARDING_TYPE"

    const/16 v3, 0x5002

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string v2, "PHONE_SUB_TYPE"

    const/16 v3, 0x5004

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    return-object v1
.end method

.method public static makeIntentForPhoneModify(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ONBOARDING_TYPE"

    const/16 v3, 0x5002

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string v2, "PHONE_SUB_TYPE"

    const/16 v3, 0x5007

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 168
    return-object v1
.end method

.method public static makeIntentForPhoneRegistration(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ONBOARDING_TYPE"

    const/16 v3, 0x5002

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v2, "PHONE_SUB_TYPE"

    const/16 v3, 0x5003

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 79
    return-object v1
.end method

.method public static makeIntentForPhoneRequiredStep(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneRequiredStep(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static makeIntentForPhoneRequiredStep(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 104
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ONBOARDING_TYPE"

    const/16 v3, 0x5002

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-string v2, "PHONE_SUB_TYPE"

    const/16 v3, 0x5005

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 109
    const-string v2, "STEP_HINT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 112
    return-object v1
.end method

.method public static makeIntentForPhoneRequiredStep(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "flag"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ONBOARDING_TYPE"

    const/16 v3, 0x5002

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v2, "PHONE_SUB_TYPE"

    const/16 v3, 0x5005

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 126
    const-string v2, "STEP_HINT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    :cond_0
    const-string v2, "DEFAULT_FLAG"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 130
    return-object v1
.end method

.method public static makeIntentForPurchaseCompletion(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "flag"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ONBOARDING_TYPE"

    const/16 v3, 0x5002

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string v2, "PHONE_SUB_TYPE"

    const/16 v3, 0x5008

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 153
    const-string v2, "STEP_HINT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    :cond_0
    const-string v2, "DEFAULT_FLAG"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 158
    return-object v1
.end method

.method public static makeIntentForWxRegistration(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ONBOARDING_TYPE"

    const/16 v3, 0x5003

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 87
    return-object v1
.end method

.method public static newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ONBOARDING_TYPE"

    const/16 v3, 0x5001

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string v2, "PHONE_SUB_TYPE"

    const/16 v3, 0x5003

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    return-object v1
.end method
