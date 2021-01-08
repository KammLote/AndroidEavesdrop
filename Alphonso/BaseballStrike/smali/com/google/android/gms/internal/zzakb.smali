.class final Lcom/google/android/gms/internal/zzakb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$view:Landroid/view/View;

.field private synthetic zzabH:Lcom/google/android/gms/internal/zzaes;

.field private synthetic zzabI:I

.field private synthetic zzabJ:Lcom/google/android/gms/internal/zzaka;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaka;Landroid/view/View;Lcom/google/android/gms/internal/zzaes;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzabJ:Lcom/google/android/gms/internal/zzaka;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakb;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzakb;->zzabH:Lcom/google/android/gms/internal/zzaes;

    iput p4, p0, Lcom/google/android/gms/internal/zzakb;->zzabI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabJ:Lcom/google/android/gms/internal/zzaka;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakb;->zzabH:Lcom/google/android/gms/internal/zzaes;

    iget v3, p0, Lcom/google/android/gms/internal/zzakb;->zzabI:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzaka;->zza(Lcom/google/android/gms/internal/zzaka;Landroid/view/View;Lcom/google/android/gms/internal/zzaes;I)V

    return-void
.end method
