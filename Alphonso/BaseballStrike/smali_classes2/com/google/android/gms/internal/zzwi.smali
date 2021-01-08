.class final Lcom/google/android/gms/internal/zzwi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic zzNx:Lcom/google/android/gms/internal/zzwg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzwg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzwi;->zzNx:Lcom/google/android/gms/internal/zzwg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwi;->zzNx:Lcom/google/android/gms/internal/zzwg;

    const-string v1, "Operation denied by user."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzwg;->zzan(Ljava/lang/String;)V

    return-void
.end method
