.class Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkPreferencesInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreferenceValue"
.end annotation


# static fields
.field static final PREFERENCE_TYPE_BOOLEAN:I = 0x1

.field static final PREFERENCE_TYPE_INTEGER:I = 0x2

.field static final PREFERENCE_TYPE_STRING:I = 0x3


# instance fields
.field mType:I

.field mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->mType:I

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->mValue:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->mType:I

    .line 45
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->mValue:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->mType:I

    .line 35
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->mValue:Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method getBooleanValue()Z
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method getIntegerValue()I
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->mType:I

    return v0
.end method
