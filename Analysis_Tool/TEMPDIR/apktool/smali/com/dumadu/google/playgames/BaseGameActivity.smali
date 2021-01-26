.class public abstract Lcom/dumadu/google/playgames/BaseGameActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseGameActivity.java"

# interfaces
.implements Lcom/dumadu/google/playgames/GameHelper$GameHelperListener;


# static fields
.field public static final CLIENT_ALL:I = 0xf

.field public static final CLIENT_APPSTATE:I = 0x4

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_PLUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaseGameActivity"


# instance fields
.field protected mDebugLog:Z

.field protected mHelper:Lcom/dumadu/google/playgames/GameHelper;

.field protected mRequestedClients:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mRequestedClients:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mDebugLog:Z

    .line 67
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "requestedClients"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mRequestedClients:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mDebugLog:Z

    .line 76
    invoke-virtual {p0, p1}, Lcom/dumadu/google/playgames/BaseGameActivity;->setRequestedClients(I)V

    .line 77
    return-void
.end method


# virtual methods
.method protected beginUserInitiatedSignIn()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0}, Lcom/dumadu/google/playgames/GameHelper;->beginUserInitiatedSignIn()V

    .line 138
    return-void
.end method

.method protected enableDebugLog(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mDebugLog:Z

    .line 154
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0, p1}, Lcom/dumadu/google/playgames/GameHelper;->enableDebugLog(Z)V

    .line 157
    :cond_0
    return-void
.end method

.method protected enableDebugLog(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    const-string v0, "BaseGameActivity"

    const-string v1, "BaseGameActivity.enabledDebugLog(bool,String) is deprecated. Use enableDebugLog(boolean)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0, p1}, Lcom/dumadu/google/playgames/BaseGameActivity;->enableDebugLog(Z)V

    .line 164
    return-void
.end method

.method protected getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0}, Lcom/dumadu/google/playgames/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public getGameHelper()Lcom/dumadu/google/playgames/GameHelper;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/dumadu/google/playgames/GameHelper;

    iget v1, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mRequestedClients:I

    invoke-direct {v0, p0, v1}, Lcom/dumadu/google/playgames/GameHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    .line 96
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    iget-boolean v1, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mDebugLog:Z

    invoke-virtual {v0, v1}, Lcom/dumadu/google/playgames/GameHelper;->enableDebugLog(Z)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    return-object v0
.end method

.method protected getInvitationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0}, Lcom/dumadu/google/playgames/GameHelper;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSignInError()Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0}, Lcom/dumadu/google/playgames/GameHelper;->getSignInError()Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    move-result-object v0

    return-object v0
.end method

.method protected hasSignInError()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0}, Lcom/dumadu/google/playgames/GameHelper;->hasSignInError()Z

    move-result v0

    return v0
.end method

.method protected isSignedIn()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0}, Lcom/dumadu/google/playgames/GameHelper;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "request"    # I
    .param p2, "response"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dumadu/google/playgames/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/BaseGameActivity;->getGameHelper()Lcom/dumadu/google/playgames/GameHelper;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0, p0}, Lcom/dumadu/google/playgames/GameHelper;->setup(Lcom/dumadu/google/playgames/GameHelper$GameHelperListener;)V

    .line 108
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 113
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0, p0}, Lcom/dumadu/google/playgames/GameHelper;->onStart(Landroid/app/Activity;)V

    .line 114
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 119
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0}, Lcom/dumadu/google/playgames/GameHelper;->onStop()V

    .line 120
    return-void
.end method

.method protected reconnectClient()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0}, Lcom/dumadu/google/playgames/GameHelper;->reconnectClient()V

    .line 172
    return-void
.end method

.method protected setRequestedClients(I)V
    .locals 0
    .param p1, "requestedClients"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mRequestedClients:I

    .line 91
    return-void
.end method

.method protected showAlert(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0, p1}, Lcom/dumadu/google/playgames/GameHelper;->makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 146
    return-void
.end method

.method protected showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0, p1, p2}, Lcom/dumadu/google/playgames/GameHelper;->makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 150
    return-void
.end method

.method protected signOut()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dumadu/google/playgames/BaseGameActivity;->mHelper:Lcom/dumadu/google/playgames/GameHelper;

    invoke-virtual {v0}, Lcom/dumadu/google/playgames/GameHelper;->signOut()V

    .line 142
    return-void
.end method
