.class public Lcom/dumadu/google/playgames/GameHelper;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;,
        Lcom/dumadu/google/playgames/GameHelper$GameHelperListener;
    }
.end annotation


# static fields
.field public static final CLIENT_ALL:I = 0xf

.field public static final CLIENT_APPSTATE:I = 0x4

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_NONE:I = 0x0

.field public static final CLIENT_PLUS:I = 0x2

.field public static final CLIENT_SNAPSHOT:I = 0x8

.field static final DEFAULT_MAX_SIGN_IN_ATTEMPTS:I = 0x3

.field static final RC_RESOLVE:I = 0x2329

.field static final RC_UNUSED:I = 0x232a

.field static final TAG:Ljava/lang/String; = "GameHelper"


# instance fields
.field private final GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

.field private final KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mAppContext:Landroid/content/Context;

.field mConnectOnStart:Z

.field private mConnecting:Z

.field mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field mDebugLog:Z

.field mExpectingResolution:Z

.field mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

.field mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

.field mHandler:Landroid/os/Handler;

.field mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

.field mListener:Lcom/dumadu/google/playgames/GameHelper$GameHelperListener;

.field mMaxAutoSignInAttempts:I

.field mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

.field mRequestedClients:I

.field mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupDone:Z

.field mShowErrorDialogs:Z

.field mSignInCancelled:Z

.field mSignInFailureReason:Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

.field mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

.field mUserInitiatedSignIn:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "clientsToUse"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mSetupDone:Z

    .line 84
    iput-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    .line 87
    iput-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mExpectingResolution:Z

    .line 91
    iput-boolean v3, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInCancelled:Z

    .line 98
    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mActivity:Landroid/app/Activity;

    .line 101
    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mAppContext:Landroid/content/Context;

    .line 111
    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 114
    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 115
    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 119
    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 131
    iput v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequestedClients:I

    .line 136
    iput-boolean v3, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectOnStart:Z

    .line 144
    iput-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mUserInitiatedSignIn:Z

    .line 147
    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 150
    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInFailureReason:Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    .line 153
    iput-boolean v3, p0, Lcom/dumadu/google/playgames/GameHelper;->mShowErrorDialogs:Z

    .line 156
    iput-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mDebugLog:Z

    .line 179
    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mListener:Lcom/dumadu/google/playgames/GameHelper$GameHelperListener;

    .line 185
    const/4 v0, 0x3

    iput v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mMaxAutoSignInAttempts:I

    .line 756
    const-string v0, "GAMEHELPER_SHARED_PREFS"

    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

    .line 757
    const-string v0, "KEY_SIGN_IN_CANCELLATIONS"

    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

    .line 197
    iput-object p1, p0, Lcom/dumadu/google/playgames/GameHelper;->mActivity:Landroid/app/Activity;

    .line 198
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mAppContext:Landroid/content/Context;

    .line 199
    iput p2, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequestedClients:I

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mHandler:Landroid/os/Handler;

    .line 201
    return-void
.end method

.method private doApiOptionsPreCheck()V
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-eqz v1, :cond_0

    .line 229
    const-string v0, "GameHelper: you cannot call set*ApiOptions after the client builder has been created. Call it before calling createApiClientBuilder() or setup()."

    .line 232
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->logError(Ljava/lang/String;)V

    .line 233
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 981
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 982
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 981
    return-object v0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 987
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 988
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 989
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 987
    return-object v0
.end method

.method public static showFailureDialog(Landroid/app/Activity;II)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "actResp"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 940
    if-nez p0, :cond_0

    .line 941
    const-string v1, "GameHelper"

    const-string v2, "*** No Activity. Can\'t show failure dialog!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :goto_0
    return-void

    .line 944
    :cond_0
    const/4 v0, 0x0

    .line 946
    .local v0, "errorDialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 962
    const/16 v1, 0x232a

    const/4 v2, 0x0

    invoke-static {p2, p0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 964
    if-nez v0, :cond_1

    .line 966
    const-string v1, "GameHelper"

    const-string v2, "No standard error dialog available. Making fallback dialog."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 970
    invoke-static {p0, v2}, Lcom/dumadu/google/playgames/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 973
    invoke-static {p2}, Lcom/dumadu/google/playgames/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 968
    invoke-static {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 977
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 948
    :pswitch_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/dumadu/google/playgames/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 950
    goto :goto_1

    .line 952
    :pswitch_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/dumadu/google/playgames/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 954
    goto :goto_1

    .line 956
    :pswitch_2
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/dumadu/google/playgames/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 958
    goto :goto_1

    .line 946
    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method assertConfigured(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-boolean v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mSetupDone:Z

    if-nez v1, :cond_0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameHelper error: Operation attempted without setup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". The setup() method must be called before attempting any other operation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->logError(Ljava/lang/String;)V

    .line 223
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public beginUserInitiatedSignIn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 644
    const-string v0, "beginUserInitiatedSignIn: resetting attempt count."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->resetSignInCancellations()V

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInCancelled:Z

    .line 647
    iput-boolean v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectOnStart:Z

    .line 649
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->logWarn(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->notifyListener(Z)V

    .line 685
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-boolean v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    if-eqz v0, :cond_1

    .line 656
    const-string v0, "beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it\'s clicked, and re-enable when you get the callback."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->logWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_1
    const-string v0, "Starting USER-INITIATED sign-in flow."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 671
    iput-boolean v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mUserInitiatedSignIn:Z

    .line 673
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    .line 676
    const-string v0, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 677
    iput-boolean v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    .line 678
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->resolveConnectionResult()V

    goto :goto_0

    .line 681
    :cond_2
    const-string v0, "beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 682
    iput-boolean v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    .line 683
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->connect()V

    goto :goto_0
.end method

.method public clearInvitation()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 472
    return-void
.end method

.method public clearRequests()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 480
    return-void
.end method

.method public clearTurnBasedMatch()V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 476
    return-void
.end method

.method connect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 688
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    const-string v0, "Already connected."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 697
    :goto_0
    return-void

    .line 692
    :cond_0
    const-string v0, "Starting connection."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    .line 694
    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 695
    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 696
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 4

    .prologue
    .line 271
    iget-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mSetupDone:Z

    if-eqz v2, :cond_0

    .line 272
    const-string v1, "GameHelper: you called GameHelper.createApiClientBuilder() after calling setup. You can only get a client builder BEFORE performing setup."

    .line 274
    .local v1, "error":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->logError(Ljava/lang/String;)V

    .line 275
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    .end local v1    # "error":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 281
    .local v0, "builder":Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    iget v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 282
    sget-object v2, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v3, p0, Lcom/dumadu/google/playgames/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 283
    sget-object v2, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 286
    :cond_1
    iget v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 287
    sget-object v2, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 288
    sget-object v2, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 296
    :cond_2
    iget v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 297
    sget-object v2, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 298
    sget-object v2, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 301
    :cond_3
    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 302
    return-object v0
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 1010
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameHelper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 888
    :goto_0
    return-void

    .line 885
    :cond_0
    const-string v0, "GameHelper"

    const-string v1, "disconnect() called when client was already disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableDebugLog(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 519
    iput-boolean p1, p0, Lcom/dumadu/google/playgames/GameHelper;->mDebugLog:Z

    .line 520
    if-eqz p1, :cond_0

    .line 521
    const-string v0, "Debug log enabled."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 523
    :cond_0
    return-void
.end method

.method public enableDebugLog(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    const-string v0, "GameHelper"

    const-string v1, "GameHelper.enableDebugLog(boolean,String) is deprecated. Use GameHelper.enableDebugLog(boolean)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {p0, p1}, Lcom/dumadu/google/playgames/GameHelper;->enableDebugLog(Z)V

    .line 530
    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No GoogleApiClient. Did you call setup()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public getInvitation()Lcom/google/android/gms/games/multiplayer/Invitation;
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    const-string v0, "GameHelper"

    const-string v1, "Warning: getInvitation() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    const-string v0, "GameHelper"

    const-string v1, "Warning: getInvitationId() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequests()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    const-string v0, "GameHelper"

    const-string v1, "Warning: getRequests() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSignInCancellations()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 762
    iget-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v2, "GAMEHELPER_SHARED_PREFS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 764
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSignInError()Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInFailureReason:Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    return-object v0
.end method

.method public getTurnBasedMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    const-string v0, "GameHelper"

    const-string v1, "Warning: getTurnBasedMatch() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method

.method giveUp(Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;)V
    .locals 3
    .param p1, "reason"    # Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    .prologue
    const/4 v2, 0x0

    .line 898
    iput-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectOnStart:Z

    .line 899
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->disconnect()V

    .line 900
    iput-object p1, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInFailureReason:Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    .line 902
    iget v0, p1, Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;->mActivityResultCode:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    .line 904
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/dumadu/google/playgames/GameHelperUtils;->printMisconfiguredDebugInfo(Landroid/content/Context;)V

    .line 907
    :cond_0
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->showFailureDialog()V

    .line 908
    iput-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    .line 909
    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->notifyListener(Z)V

    .line 910
    return-void
.end method

.method public hasInvitation()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequests()Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSignInError()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInFailureReason:Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTurnBasedMatch()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method incrementSignInCancellations()I
    .locals 5

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 772
    .local v0, "cancellations":I
    iget-object v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v3, "GAMEHELPER_SHARED_PREFS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 773
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 774
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "KEY_SIGN_IN_CANCELLATIONS"

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 775
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 776
    add-int/lit8 v2, v0, 0x1

    return v2
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    return v0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1019
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** GameHelper ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1015
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! GameHelper WARNING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return-void
.end method

.method public makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 993
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 994
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->logError(Ljava/lang/String;)V

    .line 995
    const/4 v0, 0x0

    .line 997
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/dumadu/google/playgames/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1002
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->logError(Ljava/lang/String;)V

    .line 1003
    const/4 v0, 0x0

    .line 1005
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/dumadu/google/playgames/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method notifyListener(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying LISTENER of sign-in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v0, "SUCCESS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mListener:Lcom/dumadu/google/playgames/GameHelper$GameHelperListener;

    if-eqz v0, :cond_0

    .line 629
    if-eqz p1, :cond_3

    .line 630
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mListener:Lcom/dumadu/google/playgames/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/dumadu/google/playgames/GameHelper$GameHelperListener;->onSignInSucceeded()V

    .line 635
    :cond_0
    :goto_1
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInFailureReason:Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_2

    const-string v0, "FAILURE (error)"

    goto :goto_0

    :cond_2
    const-string v0, "FAILURE (no error)"

    goto :goto_0

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mListener:Lcom/dumadu/google/playgames/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/dumadu/google/playgames/GameHelper$GameHelperListener;->onSignInFailed()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x2329

    const/4 v4, 0x0

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p1, v5, :cond_0

    const-string v2, "RC_RESOLVE"

    .line 570
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 571
    invoke-static {p2}, Lcom/dumadu/google/playgames/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 568
    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 572
    if-eq p1, v5, :cond_1

    .line 573
    const-string v2, "onActivityResult: request code not meant for us. Ignoring."

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 621
    :goto_1
    return-void

    .line 570
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 578
    :cond_1
    iput-boolean v4, p0, Lcom/dumadu/google/playgames/GameHelper;->mExpectingResolution:Z

    .line 580
    iget-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    if-nez v2, :cond_2

    .line 581
    const-string v2, "onActivityResult: ignoring because we are not connecting."

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 587
    :cond_2
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 589
    const-string v2, "onAR: Resolution was RESULT_OK, so connecting current client again."

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->connect()V

    goto :goto_1

    .line 591
    :cond_3
    const/16 v2, 0x2711

    if-ne p2, v2, :cond_4

    .line 592
    const-string v2, "onAR: Resolution was RECONNECT_REQUIRED, so reconnecting."

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->connect()V

    goto :goto_1

    .line 594
    :cond_4
    if-nez p2, :cond_5

    .line 596
    const-string v2, "onAR: Got a cancellation result, so disconnecting."

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 597
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInCancelled:Z

    .line 598
    iput-boolean v4, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectOnStart:Z

    .line 599
    iput-boolean v4, p0, Lcom/dumadu/google/playgames/GameHelper;->mUserInitiatedSignIn:Z

    .line 600
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInFailureReason:Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    .line 601
    iput-boolean v4, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    .line 602
    iget-object v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 605
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->getSignInCancellations()I

    move-result v1

    .line 606
    .local v1, "prevCancellations":I
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->incrementSignInCancellations()I

    move-result v0

    .line 607
    .local v0, "newCancellations":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAR: # of cancellations "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dumadu/google/playgames/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0, v4}, Lcom/dumadu/google/playgames/GameHelper;->notifyListener(Z)V

    goto :goto_1

    .line 614
    .end local v0    # "newCancellations":I
    .end local v1    # "prevCancellations":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAR: responseCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 616
    invoke-static {p2}, Lcom/dumadu/google/playgames/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", so giving up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 618
    new-instance v2, Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    iget-object v3, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    invoke-direct {v2, v3, p2}, Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->giveUp(Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;)V

    goto/16 :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    .line 716
    const-string v1, "onConnected: connected!"

    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 718
    if-eqz p1, :cond_2

    .line 719
    const-string v1, "onConnected: connection hint provided. Checking for invite."

    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 720
    const-string v1, "invitation"

    .line 721
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 722
    .local v0, "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 724
    const-string v1, "onConnected: connection hint has a room invite!"

    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 725
    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invitation ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v2}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 730
    :cond_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    .line 731
    invoke-interface {v1, p1}, Lcom/google/android/gms/games/request/Requests;->getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 732
    iget-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected: connection hint has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " request(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 738
    :cond_1
    const-string v1, "onConnected: connection hint provided. Checking for TBMP game."

    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 739
    const-string v1, "turn_based_match"

    .line 740
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 744
    .end local v0    # "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    :cond_2
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->succeedSignIn()V

    .line 745
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const/4 v4, 0x0

    .line 792
    const-string v2, "onConnectionFailed"

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 794
    iput-object p1, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 795
    const-string v2, "Connection failure:"

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 798
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    .line 797
    invoke-static {v3}, Lcom/dumadu/google/playgames/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 796
    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - resolvable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 803
    .local v0, "cancellations":I
    const/4 v1, 0x0

    .line 805
    .local v1, "shouldResolve":Z
    iget-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mUserInitiatedSignIn:Z

    if-eqz v2, :cond_0

    .line 806
    const-string v2, "onConnectionFailed: WILL resolve because user initiated sign-in."

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 807
    const/4 v1, 0x1

    .line 827
    :goto_0
    if-nez v1, :cond_3

    .line 829
    const-string v2, "onConnectionFailed: since we won\'t resolve, failing now."

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 830
    iput-object p1, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 831
    iput-boolean v4, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    .line 832
    invoke-virtual {p0, v4}, Lcom/dumadu/google/playgames/GameHelper;->notifyListener(Z)V

    .line 842
    :goto_1
    return-void

    .line 808
    :cond_0
    iget-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInCancelled:Z

    if-eqz v2, :cond_1

    .line 809
    const-string v2, "onConnectionFailed WILL NOT resolve (user already cancelled once)."

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 810
    const/4 v1, 0x0

    goto :goto_0

    .line 811
    :cond_1
    iget v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mMaxAutoSignInAttempts:I

    if-ge v0, v2, :cond_2

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionFailed: WILL resolve because we have below the max# of attempts, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dumadu/google/playgames/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 817
    const/4 v1, 0x1

    goto :goto_0

    .line 819
    :cond_2
    const/4 v1, 0x0

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionFailed: Will NOT resolve; not user-initiated and max attempts reached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dumadu/google/playgames/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 836
    :cond_3
    const-string v2, "onConnectionFailed: resolving problem..."

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->resolveConnectionResult()V

    goto :goto_1
.end method

.method public onConnectionSuspended(I)V
    .locals 3
    .param p1, "cause"    # I

    .prologue
    const/4 v2, 0x0

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionSuspended, cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->disconnect()V

    .line 917
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInFailureReason:Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    .line 918
    const-string v0, "Making extraordinary call to onSignInFailed callback"

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 919
    iput-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    .line 920
    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->notifyListener(Z)V

    .line 921
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/dumadu/google/playgames/GameHelper;->mActivity:Landroid/app/Activity;

    .line 379
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mAppContext:Landroid/content/Context;

    .line 381
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 382
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 384
    iget-boolean v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectOnStart:Z

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const-string v0, "GameHelper"

    const-string v1, "GameHelper: client was already connected on onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_0
    return-void

    .line 389
    :cond_0
    const-string v0, "Connecting client."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    .line 391
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 394
    :cond_1
    const-string v0, "Not attempting to connect becase mConnectOnStart=false"

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 395
    const-string v0, "Instead, reporting a sign-in failure."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dumadu/google/playgames/GameHelper$1;

    invoke-direct {v1, p0}, Lcom/dumadu/google/playgames/GameHelper$1;-><init>(Lcom/dumadu/google/playgames/GameHelper;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 407
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 408
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "Disconnecting client due to onStop"

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 415
    :goto_0
    iput-boolean v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    .line 416
    iput-boolean v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mExpectingResolution:Z

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mActivity:Landroid/app/Activity;

    .line 420
    return-void

    .line 413
    :cond_0
    const-string v0, "Client already disconnected when we got onStop."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reconnectClient()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    const-string v0, "GameHelper"

    const-string v1, "reconnectClient() called when client is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->connect()V

    .line 711
    :goto_0
    return-void

    .line 708
    :cond_0
    const-string v0, "Reconnecting client."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    goto :goto_0
.end method

.method resetSignInCancellations()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 782
    iget-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v2, "GAMEHELPER_SHARED_PREFS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 783
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 784
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 785
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 786
    return-void
.end method

.method resolveConnectionResult()V
    .locals 4

    .prologue
    .line 851
    iget-boolean v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mExpectingResolution:Z

    if-eqz v1, :cond_0

    .line 852
    const-string v1, "We\'re already expecting the result of a previous resolution."

    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 878
    :goto_0
    return-void

    .line 856
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveConnectionResult: trying to resolve result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 858
    iget-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    const-string v1, "Result has resolution. Starting it."

    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 864
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mExpectingResolution:Z

    .line 865
    iget-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x2329

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 867
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "SendIntentException, so connecting again."

    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->connect()V

    goto :goto_0

    .line 875
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_1
    const-string v1, "resolveConnectionResult: result has no resolution. Giving up."

    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 876
    new-instance v1, Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    iget-object v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->giveUp(Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;)V

    goto :goto_0
.end method

.method public setConnectOnStart(Z)V
    .locals 2
    .param p1, "connectOnStart"    # Z

    .prologue
    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forcing mConnectOnStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 1063
    iput-boolean p1, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectOnStart:Z

    .line 1064
    return-void
.end method

.method public setGamesApiOptions(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/android/gms/games/Games$GamesOptions;

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/dumadu/google/playgames/GameHelper;->doApiOptionsPreCheck()V

    .line 243
    iput-object p1, p0, Lcom/dumadu/google/playgames/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 244
    return-void
.end method

.method public setMaxAutoSignInAttempts(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/dumadu/google/playgames/GameHelper;->mMaxAutoSignInAttempts:I

    .line 215
    return-void
.end method

.method public setPlusApiOptions(Lcom/google/android/gms/plus/Plus$PlusOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/android/gms/plus/Plus$PlusOptions;

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/dumadu/google/playgames/GameHelper;->doApiOptionsPreCheck()V

    .line 261
    iput-object p1, p0, Lcom/dumadu/google/playgames/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 262
    return-void
.end method

.method public setShowErrorDialogs(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/dumadu/google/playgames/GameHelper;->mShowErrorDialogs:Z

    .line 374
    return-void
.end method

.method public setup(Lcom/dumadu/google/playgames/GameHelper$GameHelperListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/dumadu/google/playgames/GameHelper$GameHelperListener;

    .prologue
    .line 315
    iget-boolean v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    .line 316
    const-string v0, "GameHelper: you cannot call GameHelper.setup() more than once!"

    .line 317
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->logError(Ljava/lang/String;)V

    .line 318
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/dumadu/google/playgames/GameHelper;->mListener:Lcom/dumadu/google/playgames/GameHelper$GameHelperListener;

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup: requested clients: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequestedClients:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-nez v1, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/dumadu/google/playgames/GameHelper;->createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 329
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 330
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mSetupDone:Z

    .line 331
    return-void
.end method

.method public showFailureDialog()V
    .locals 4

    .prologue
    .line 924
    iget-object v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInFailureReason:Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    if-eqz v2, :cond_0

    .line 925
    iget-object v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInFailureReason:Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    invoke-virtual {v2}, Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;->getServiceErrorCode()I

    move-result v1

    .line 926
    .local v1, "errorCode":I
    iget-object v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInFailureReason:Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    invoke-virtual {v2}, Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;->getActivityResultCode()I

    move-result v0

    .line 928
    .local v0, "actResp":I
    iget-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mShowErrorDialogs:Z

    if-eqz v2, :cond_1

    .line 929
    iget-object v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/dumadu/google/playgames/GameHelper;->showFailureDialog(Landroid/app/Activity;II)V

    .line 935
    .end local v0    # "actResp":I
    .end local v1    # "errorCode":I
    :cond_0
    :goto_0
    return-void

    .line 931
    .restart local v0    # "actResp":I
    .restart local v1    # "errorCode":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not showing error dialog because mShowErrorDialogs==false. Error was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInFailureReason:Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public signOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 534
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    const-string v0, "signOut: was already disconnected, ignoring."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 559
    :goto_0
    return-void

    .line 542
    :cond_0
    iget v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 543
    const-string v0, "Clearing default account on PlusClient."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 544
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 549
    :cond_1
    iget v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 550
    const-string v0, "Signing out from the Google API Client."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 555
    :cond_2
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 556
    iput-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectOnStart:Z

    .line 557
    iput-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    .line 558
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method

.method succeedSignIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 748
    const-string v0, "succeedSignIn"

    invoke-virtual {p0, v0}, Lcom/dumadu/google/playgames/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dumadu/google/playgames/GameHelper;->mSignInFailureReason:Lcom/dumadu/google/playgames/GameHelper$SignInFailureReason;

    .line 750
    iput-boolean v2, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnectOnStart:Z

    .line 751
    iput-boolean v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mUserInitiatedSignIn:Z

    .line 752
    iput-boolean v1, p0, Lcom/dumadu/google/playgames/GameHelper;->mConnecting:Z

    .line 753
    invoke-virtual {p0, v2}, Lcom/dumadu/google/playgames/GameHelper;->notifyListener(Z)V

    .line 754
    return-void
.end method
